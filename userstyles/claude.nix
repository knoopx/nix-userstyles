{
  pkgs,
  palette,
  nix-colors,
  ...
}: let
  _hexToHSL = import ../lib/hexToHSL.nix {
    inherit nix-colors;
    inherit (pkgs) lib;
  };
  hexToHSL = x: _hexToHSL x "%";
in
  pkgs.writeTextFile {
    name = "claude.userstyle.css";

    text = ''
      @-moz-document domain("claude.ai") {
        * { background-image: none; }

        :root {
          --font-system: system-ui;
          --font-sans-serif: monospace;
          --font-serif: var(--font-system);
          --font-tiempos: var(--font-system);

          --accent-brand: ${hexToHSL palette.base07};
          --accent-secondary-000: ${hexToHSL palette.base06};
          --bg-000: ${hexToHSL palette.base01};
          --bg-100: ${hexToHSL palette.base00};
          --bg-200: ${hexToHSL palette.base02};
          --bg-300: ${hexToHSL palette.base03};
          --bg-400: ${hexToHSL palette.base04};
          --bg-500: ${hexToHSL palette.base05};
          --border-100: ${hexToHSL palette.base07};
          --border-200: ${hexToHSL palette.base07};
          --border-300: ${hexToHSL palette.base07};
          --border-400: ${hexToHSL palette.base07};
        }
      }
    '';
  }
