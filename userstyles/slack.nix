{
  pkgs,
  palette,
  nix-colors,
  ...
}: let
  # Helper function to convert hex to RGBA
  hexToRgba = hex: alpha: let
    r = nix-colors.lib.conversions.hexToDec (builtins.substring 0 2 hex);
    g = nix-colors.lib.conversions.hexToDec (builtins.substring 2 2 hex);
    b = nix-colors.lib.conversions.hexToDec (builtins.substring 4 2 hex);
  in "rgba(${toString r},${toString g},${toString b},${toString alpha})";
in
  pkgs.writeTextFile {
    name = "slack.userstyle.css";
    text = ''
      @-moz-document domain("slack.com") {
        :root, .sk-client-theme--light {
          --dt_color-theme-base-pry: ${hexToRgba palette.base0E 1};
          --dt_color-theme-base-pry-hover: ${hexToRgba palette.base0E 0.13};
          --dt_color-theme-base-pry-pressed: ${hexToRgba palette.base0E 0.22};
          --dt_color-theme-base-sec: ${hexToRgba palette.base0D 1};
          --dt_color-theme-base-sec-hover: ${hexToRgba palette.base0E 0.06};
          --dt_color-theme-base-sec-pressed: ${hexToRgba palette.base0E 0.13};
          --dt_color-theme-base-hgl-1: ${hexToRgba palette.base0A 1};
          --dt_color-theme-base-hgl-1-hover: ${hexToRgba palette.base0A 0.22};
          --dt_color-theme-base-hgl-1-pressed: ${hexToRgba palette.base0A 0.28};
          --dt_color-theme-base-hgl-2: ${hexToRgba palette.base0B 1};
          --dt_color-theme-base-hgl-2-hover: ${hexToRgba palette.base0B 0.13};
          --dt_color-theme-base-hgl-2-pressed: ${hexToRgba palette.base0B 0.22};
          --dt_color-theme-base-imp: ${hexToRgba palette.base08 1};
          --dt_color-theme-base-imp-hover: ${hexToRgba palette.base08 0.13};
          --dt_color-theme-base-imp-pressed: ${hexToRgba palette.base08 0.22};
          --dt_color-theme-base-inv-pry: ${hexToRgba palette.base07 1};
          --dt_color-theme-base-inv-pry-hover: ${hexToRgba palette.base0E 0.06};
          --dt_color-theme-base-inv-pry-pressed: ${hexToRgba palette.base0E 0.13};
          --dt_color-theme-base-inv-sec: ${hexToRgba palette.base07 1};
          --dt_color-theme-base-inv-sec-hover: ${hexToRgba palette.base0E 0.06};
          --dt_color-theme-base-inv-sec-pressed: ${hexToRgba palette.base0E 0.13};
          --dt_color-theme-base-inv-hgl-1: ${hexToRgba palette.base0A 1};
          --dt_color-theme-base-inv-hgl-1-hover: ${hexToRgba palette.base0A 0.22};
          --dt_color-theme-base-inv-hgl-1-pressed: ${hexToRgba palette.base0A 0.28};
          --dt_color-theme-base-inv-hgl-2: ${hexToRgba palette.base0B 1};
          --dt_color-theme-base-inv-hgl-2-hover: ${hexToRgba palette.base0B 0.09};
          --dt_color-theme-base-inv-hgl-2-pressed: ${hexToRgba palette.base0B 0.22};
          --dt_color-theme-base-inv-imp: ${hexToRgba palette.base08 1};
          --dt_color-theme-base-inv-imp-hover: ${hexToRgba palette.base08 0.13};
          --dt_color-theme-base-inv-imp-pressed: ${hexToRgba palette.base08 0.22};
          --dt_color-theme-surf-pry: ${hexToRgba palette.base07 0.25};
          --dt_color-theme-surf-pry-hover: ${hexToRgba palette.base0E 0.06};
          --dt_color-theme-surf-pry-pressed: ${hexToRgba palette.base0E 0.13};
          --dt_color-theme-surf-sec: ${hexToRgba palette.base0E 0.05};
          --dt_color-theme-surf-sec-hover: ${hexToRgba palette.base0E 0.22};
          --dt_color-theme-surf-sec-pressed: ${hexToRgba palette.base0E 0.28};
          --dt_color-theme-surf-ter: ${hexToRgba palette.base00 0.95};
          --dt_color-theme-surf-ter-hover: ${hexToRgba palette.base01 0.13};
          --dt_color-theme-surf-ter-pressed: ${hexToRgba palette.base01 0.22};
          --dt_color-theme-surf-inv-pry: ${hexToRgba palette.base0E 0.13};
          --dt_color-theme-surf-inv-pry-hover: ${hexToRgba palette.base0E 0.22};
          --dt_color-theme-surf-inv-pry-pressed: ${hexToRgba palette.base0E 0.28};
          --dt_color-theme-surf-inv-sec: ${hexToRgba palette.base00 0.9};
          --dt_color-theme-surf-inv-sec-hover: ${hexToRgba palette.base01 0.13};
          --dt_color-theme-surf-inv-sec-pressed: ${hexToRgba palette.base01 0.22};
          --dt_color-theme-surf-inv-ter: ${hexToRgba palette.base0E 0.13};
          --dt_color-theme-surf-inv-ter-hover: ${hexToRgba palette.base0E 0.22};
          --dt_color-theme-surf-inv-ter-pressed: ${hexToRgba palette.base0E 0.28};
          --dt_color-theme-content-pry: ${hexToRgba palette.base0E 1};
          --dt_color-theme-content-sec: ${hexToRgba palette.base0E 0.8};
          --dt_color-theme-content-ter: ${hexToRgba palette.base07 1};
          --dt_color-theme-content-hgl-1: ${hexToRgba palette.base0C 1};
          --dt_color-theme-content-imp: ${hexToRgba palette.base09 1};
          --dt_color-theme-content-inv-pry: ${hexToRgba palette.base0E 1};
          --dt_color-theme-content-inv-sec: ${hexToRgba palette.base0E 0.8};
          --dt_color-theme-content-inv-ter: ${hexToRgba palette.base0E 0.5};
          --dt_color-theme-content-inv-imp: ${hexToRgba palette.base09 1};
          --dt_color-theme-content-inv-imp-sec: ${hexToRgba palette.base08 1};
          --dt_color-theme-otl-inv-pry: ${hexToRgba palette.base0E 0.13};
          --dt_color-theme-surf-pry: ${hexToRgba palette.base07 0.25};
          --dt_color-theme-surf-ter: ${hexToRgba palette.base00 0.95};
          --dt_color-theme-surf-inv-sec: ${hexToRgba palette.base00 0.9};
        }

        .sk-client-theme--dark {
          --dt_color-theme-base-pry: ${hexToRgba palette.base07 1};
          --dt_color-theme-base-pry-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-base-pry-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-base-sec: ${hexToRgba palette.base0E 1};
          --dt_color-theme-base-sec-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-base-sec-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-base-hgl-1: ${hexToRgba palette.base0D 1};
          --dt_color-theme-base-hgl-1-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-base-hgl-1-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-base-hgl-2: ${hexToRgba palette.base0B 1};
          --dt_color-theme-base-hgl-2-hover: ${hexToRgba palette.base0C 0.08};
          --dt_color-theme-base-hgl-2-pressed: ${hexToRgba palette.base0C 0.18};
          --dt_color-theme-base-imp: ${hexToRgba palette.base0F 1};
          --dt_color-theme-base-imp-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-base-imp-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-base-inv-pry: ${hexToRgba palette.base01 1};
          --dt_color-theme-base-inv-pry-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-base-inv-pry-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-base-inv-sec: ${hexToRgba palette.base02 1};
          --dt_color-theme-base-inv-sec-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-base-inv-sec-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-base-inv-hgl-1: ${hexToRgba palette.base0D 1};
          --dt_color-theme-base-inv-hgl-1-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-base-inv-hgl-1-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-base-inv-hgl-2: ${hexToRgba palette.base0B 1};
          --dt_color-theme-base-inv-hgl-2-hover: ${hexToRgba palette.base0C 0.08};
          --dt_color-theme-base-inv-hgl-2-pressed: ${hexToRgba palette.base0C 0.18};
          --dt_color-theme-base-inv-imp: ${hexToRgba palette.base0E 1};
          --dt_color-theme-base-inv-imp-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-base-inv-imp-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-surf-pry: ${hexToRgba palette.base07 0.25};
          --dt_color-theme-surf-pry-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-surf-pry-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-surf-sec: ${hexToRgba palette.base0D 0.3};
          --dt_color-theme-surf-sec-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-surf-sec-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-surf-ter: ${hexToRgba palette.base00 0.75};
          --dt_color-theme-surf-ter-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-surf-ter-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-surf-inv-pry: ${hexToRgba palette.base0F 0.25};
          --dt_color-theme-surf-inv-pry-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-surf-inv-pry-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-surf-inv-sec: ${hexToRgba palette.base00 0.6};
          --dt_color-theme-surf-inv-sec-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-surf-inv-sec-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-surf-inv-ter: ${hexToRgba palette.base0F 0.08};
          --dt_color-theme-surf-inv-ter-hover: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-surf-inv-ter-pressed: ${hexToRgba palette.base07 0.18};
          --dt_color-theme-content-pry: ${hexToRgba palette.base07 1};
          --dt_color-theme-content-sec: ${hexToRgba palette.base06 0.9};
          --dt_color-theme-content-ter: ${hexToRgba palette.base01 1};
          --dt_color-theme-content-hgl-1: ${hexToRgba palette.base07 1};
          --dt_color-theme-content-imp: ${hexToRgba palette.base01 1};
          --dt_color-theme-content-inv-pry: ${hexToRgba palette.base05 1};
          --dt_color-theme-content-inv-sec: ${hexToRgba palette.base06 0.8};
          --dt_color-theme-content-inv-ter: ${hexToRgba palette.base06 0.6};
          --dt_color-theme-content-inv-imp: ${hexToRgba palette.base07 1};
          --dt_color-theme-content-inv-imp-sec: ${hexToRgba palette.base0F 1};
          --dt_color-theme-otl-inv-pry: ${hexToRgba palette.base07 0.22};
          --dt_color-theme-surf-pry: ${hexToRgba palette.base07 0.25};
          --dt_color-theme-surf-ter: ${hexToRgba palette.base00 0.75};
        }

        .sk-client-theme--light-inverted-sidebar {
          --dt_color-theme-base-pry: ${hexToRgba palette.base07 1};
          --dt_color-theme-base-pry-hover: ${hexToRgba palette.base0E 0.08};
          --dt_color-theme-base-pry-pressed: ${hexToRgba palette.base0E 0.18};
          --dt_color-theme-base-sec: ${hexToRgba palette.base0D 1};
          --dt_color-theme-base-sec-hover: ${hexToRgba palette.base0E 0.08};
          --dt_color-theme-base-sec-pressed: ${hexToRgba palette.base0E 0.18};
          --dt_color-theme-base-hgl-1: ${hexToRgba palette.base07 1};
          --dt_color-theme-base-hgl-1-hover: ${hexToRgba palette.base0E 0.08};
          --dt_color-theme-base-hgl-1-pressed: ${hexToRgba palette.base0E 0.18};
          --dt_color-theme-base-hgl-2: ${hexToRgba palette.base0B 1};
          --dt_color-theme-base-hgl-2-hover: ${hexToRgba palette.base0B 0.08};
          --dt_color-theme-base-hgl-2-pressed: ${hexToRgba palette.base0B 0.18};
          --dt_color-theme-base-imp: ${hexToRgba palette.base0D 1};
          --dt_color-theme-base-imp-hover: ${hexToRgba palette.base0E 0.08};
          --dt_color-theme-base-imp-pressed: ${hexToRgba palette.base0E 0.18};
          --dt_color-theme-base-inv-pry: ${hexToRgba palette.base0E 1};
          --dt_color-theme-base-inv-pry-hover: ${hexToRgba palette.base0E 0.08};
          --dt_color-theme-base-inv-pry-pressed: ${hexToRgba palette.base0E 0.18};
          --dt_color-theme-base-inv-sec: ${hexToRgba palette.base0D 1};
          --dt_color-theme-base-inv-sec-hover: ${hexToRgba palette.base0E 0.08};
          --dt_color-theme-base-inv-sec-pressed: ${hexToRgba palette.base0E 0.18};
          --dt_color-theme-base-inv-hgl-1: ${hexToRgba palette.base0E 1};
          --dt_color-theme-base-inv-hgl-1-hover: ${hexToRgba palette.base0E 0.08};
          --dt_color-theme-base-inv-hgl-1-pressed: ${hexToRgba palette.base0E 0.18};
          --dt_color-theme-base-inv-hgl-2: ${hexToRgba palette.base0B 1};
          --dt_color-theme-base-inv-hgl-2-hover: ${hexToRgba palette.base0B 0.08};
          --dt_color-theme-base-inv-hgl-2-pressed: ${hexToRgba palette.base0B 0.18};
          --dt_color-theme-base-inv-imp: ${hexToRgba palette.base0D 1};
          --dt_color-theme-base-inv-imp-hover: ${hexToRgba palette.base0E 0.08};
          --dt_color-theme-base-inv-imp-pressed: ${hexToRgba palette.base0E 0.18};
          --dt_color-theme-surf-pry: ${hexToRgba palette.base0E 0.13};
          --dt_color-theme-surf-pry-hover: ${hexToRgba palette.base0E 0.08};
          --dt_color-theme-surf-pry-pressed: ${hexToRgba palette.base0E 0.18};
          --dt_color-theme-surf-sec: ${hexToRgba palette.base0E 0.05};
          --dt_color-theme-surf-sec-hover: ${hexToRgba palette.base0E 0.08};
          --dt_color-theme-surf-sec-pressed: ${hexToRgba palette.base0E 0.18};
          --dt_color-theme-surf-ter: ${hexToRgba palette.base00 0.95};
          --dt_color-theme-surf-ter-hover: ${hexToRgba palette.base01 0.08};
          --dt_color-theme-surf-ter-pressed: ${hexToRgba palette.base01 0.18};
          --dt_color-theme-surf-inv-pry: ${hexToRgba palette.base07 0.25};
          --dt_color-theme-surf-inv-pry-hover: ${hexToRgba palette.base0E 0.08};
          --dt_color-theme-surf-inv-pry-pressed: ${hexToRgba palette.base0E 0.18};
          --dt_color-theme-surf-inv-sec: ${hexToRgba palette.base07 0.11};
          --dt_color-theme-surf-inv-sec-hover: ${hexToRgba palette.base0E 0.08};
          --dt_color-theme-surf-inv-sec-pressed: ${hexToRgba palette.base0E 0.18};
          --dt_color-theme-surf-inv-ter: ${hexToRgba palette.base07 0.08};
          --dt_color-theme-surf-inv-ter-hover: ${hexToRgba palette.base0E 0.08};
          --dt_color-theme-surf-inv-ter-pressed: ${hexToRgba palette.base0E 0.18};
          --dt_color-theme-content-pry: ${hexToRgba palette.base0E 1};
          --dt_color-theme-content-sec: ${hexToRgba palette.base0E 0.8};
          --dt_color-theme-content-ter: ${hexToRgba palette.base0E 1};
          --dt_color-theme-content-hgl-1: ${hexToRgba palette.base0E 1};
          --dt_color-theme-content-imp: ${hexToRgba palette.base08 1};
          --dt_color-theme-content-inv-pry: ${hexToRgba palette.base00 1};
          --dt_color-theme-content-inv-sec: ${hexToRgba palette.base06 0.8};
          --dt_color-theme-content-inv-ter: ${hexToRgba palette.base07 0.6};
          --dt_color-theme-content-inv-imp: ${hexToRgba palette.base07 1};
          --dt_color-theme-content-inv-imp-sec: ${hexToRgba palette.base06 1};
          --dt_color-theme-otl-inv-pry: ${hexToRgba palette.base07 0.22};
          --dt_color-theme-surf-pry: ${hexToRgba palette.base0E 0.13};
          --dt_color-theme-surf-ter: ${hexToRgba palette.base00 0.95};
          --dt_color-theme-content-inv-pry: ${hexToRgba palette.base00 1};
        }
      }
    '';
  }
