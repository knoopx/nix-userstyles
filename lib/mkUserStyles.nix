{
  pkgs,
  lib,
  nix-colors,
  catppuccin-userstyles,
  discord-userstyle,
  ...
} @ inputs: palette: userStyles: let
  listNixModulesRecursive = import ./listNixModulesRecursive.nix inputs;
  importantize = pkgs.callPackage ./importantize.nix inputs;

  extraPkgs = lib.map (x:
    pkgs.callPackage x {
      inherit palette nix-colors discord-userstyle;
    })
  (listNixModulesRecursive ../userstyles);

  extraPkg = pkgs.stdenvNoCC.mkDerivation {
    name = "extra-userstyles";
    phases = ["installPhase"];
    installPhase = ''
      mkdir -p $out
      for pkg in ${lib.concatStringsSep " " extraPkgs}; do
        cp $pkg $out/
      done
    '';
  };

  cssVars = ''
    :root {
    ${
      builtins.concatStringsSep "\n" (lib.attrsets.mapAttrsToList (
          name: value: "--${name}: #${toString value};"
        )
        palette)
    }
    }
  '';

  lessVarDecl = vars: prefix:
    builtins.concatStringsSep " " (lib.attrsets.mapAttrsToList (
        name: value:
          if builtins.isAttrs value
          then "@${prefix}${name}: { ${lessVarDecl value ""} };"
          else "@${prefix}${name}: ${toString value};"
      )
      vars);

  lessVars = {
    lightFlavor = "mocha";
    darkFlavor = "mocha";
    accentColor = "lavender";
    contrastColor = "@accentColor";
    highlightColor = "@accentColor";

    highlightColor1 = "lavender";
    highlightColor2 = "green";
    highlightColor3 = "peach";
    highlightColor4 = "blue";
    styleBoardAndPieces = 1;

    applyToDocument = 0;
    graphUseAccentColor = 1;
    bg-opacity = 0.2;
    bg-blur = "20px";
    zen = 0;
    styleVideoPlayer = 1;
    stylePieces = 1;
    hideProfilePictures = 0;
    additions = 0;
    urls = "localhost";
    darkenShadows = 1;
    colorizeLogo = 0;
    lighterMessages = 0;
    highlight-redirect = 0;
    logo = 1;
    oled = 0;
    sponsorBlock = 1;
  };

  userStylesStr = lib.concatStringsSep " " userStyles;
  catppuccinMochaPalette = lib.attrValues nix-colors.colorSchemes.catppuccin-mocha.palette;
in
  pkgs.stdenvNoCC.mkDerivation {
    name = "userstyles.css";
    phases = ["buildPhase"];
    buildInputs = with pkgs; [
      lessc
      nodePackages_latest.sass
    ];
    buildPhase = ''
      export NODE_PATH=${pkgs.nodePackages.less-plugin-clean-css}/lib/node_modules

      # Build catppuccin userstyles
      for style in ${userStylesStr}; do
        file="${catppuccin-userstyles}/styles/$style/catppuccin.user.less"
        if [ -f "$file" ]; then
          (cat "$file"; echo ${lib.strings.escapeShellArg (lessVarDecl lessVars "")}) | \
            lessc --source-map-no-annotation --clean-css="-b --s0 --skip-rebase --skip-advanced --skip-aggressive-merging --skip-shorthand-compacting" - >> catppuccin.userstyles.css
        fi
      done

      # Build extra userstyles
      for style in ${userStylesStr}; do
        file="${extraPkg}/$style/userstyle.css"
        if [ -f "$file" ]; then
          (echo "${cssVars}"; cat "$file") | sass --quiet - >> extra.userstyles.css
        fi
      done

      if [ -f extra.userstyles.css ]; then
        substituteInPlace extra.userstyles.css \
          ${lib.concatStringsSep " \\\n        " (lib.zipListsWith (
          mochaColor: paletteColor: "--replace-warn '${mochaColor}' '${paletteColor}'"
        )
        catppuccinMochaPalette
        (lib.attrValues palette))}
      fi

      cat *.userstyles.css | ${lib.getExe importantize} > $out
    '';
  }
