# nix-userstyles

This module exports a nix function to generate userstyles for popular websites using your own color palette.

## Usage

```nix
{nix-userstyles, ...}: let
  # https://github.com/SenchoPens/base16.nix/blob/main/DOCUMENTATION.md#mkschemeattrs
  # https://github.com/tinted-theming/schemes
  nix-colors = builtins.getFlake "github:misterio77/nix-colors";
  palette = nix-colors.outputs.colorSchemes.dracula.palette;
  # https://github.com/catppuccin/userstyles/tree/main/styles
  userStyles = [
    "brave-search"
    "bsky"
    "chatgpt"
    "cinny"
    "duckduckgo"
    "github"
    "google"
    "hacker-news"
    "lobste.rs"
    "nixos-*"
    "npm"
    "ollama"
    "perplexity"
    "reddit"
    "spotify-web"
    "stack-overflow"
    "whatsapp-web"
    "wikipedia"
    "youtube"
  ]
in {
  # no additional extensions needed, just add the userstyles to your firefox profile userContent
  programs.firefox.profiles.yourprofile.userContent = ''
    ${builtins.readFile "${nix-userstyles.packages.${pkgs.system}.mkUserStyles palette userStyles}"}
  '';
}
```

## Credits

- [Catppuccin Organization](https://github.com/catppuccin)
- [SenchoPens/base16.nix](https://github.com/SenchoPens/base16.nix)
- [tinted-theming/schemes](https://github.com/tinted-theming/schemes)
