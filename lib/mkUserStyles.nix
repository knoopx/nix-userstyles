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
        name=$(basename "$pkg" ".userstyle.css")
        name=''${name#*-}
        mkdir -p "$out/$name"
        cp "$pkg" "$out/$name/userstyle.css"
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
    accentColor = "lavender";
    additions = 0;
    applyToDocument = 0;
    bg-blur = "20px";
    bg-opacity = 0.2;
    colorizeLogo = 0;
    contrastColor = "@accentColor";
    darkenShadows = 1;
    darkFlavor = "mocha";
    graphUseAccentColor = 1;
    hideProfilePictures = 0;
    highlight-redirect = 0;
    highlightColor = "@accentColor";
    highlightColor1 = "lavender";
    highlightColor2 = "green";
    highlightColor3 = "peach";
    highlightColor4 = "blue";
    lighterMessages = 0;
    lightFlavor = "mocha";
    logo = 1;
    oled = 0;
    sponsorBlock = 1;
    styleBoardAndPieces = 1;
    stylePieces = 1;
    styleVideoPlayer = 1;
    urls = "localhost";
    zen = 0;
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

      # build catppuccin userstyles
      for style in ${userStylesStr}; do
        file="${catppuccin-userstyles}/styles/$style/catppuccin.user.less"
        if [ -f "$file" ]; then
          (cat "$file"; echo ${lib.strings.escapeShellArg (lessVarDecl lessVars "")}) | \
            lessc --source-map-no-annotation --clean-css="-b --s0 --skip-rebase --skip-advanced --skip-aggressive-merging --skip-shorthand-compacting" - >> catppuccin.userstyles.css
        fi
      done

      # build extra userstyles
      for style in ${userStylesStr}; do
        file="${extraPkg}/$style/userstyle.css"
        echo "$file"
        if [ -f "$file" ]; then
          (echo "${cssVars}"; cat "$file") | sass --quiet - >> extra.userstyles.css
        fi
      done

      # replace catppuccin mocha colors with user-defined palette colors
      cat *.userstyles.css > userstyles.css
      substituteInPlace userstyles.css \
        ${lib.concatStringsSep " \\\n        " (lib.zipListsWith (
          mochaColor: paletteColor: "--replace-warn '${mochaColor}' '${paletteColor}'"
        )
        catppuccinMochaPalette
        (lib.attrValues palette))}

      # !important
      cat userstyles.css | ${lib.getExe importantize} > $out
    '';
  }
