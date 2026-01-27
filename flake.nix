{
  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";

    nix-colors.url = "github:misterio77/nix-colors";
    nix-colors.inputs.nixpkgs-lib.follows = "nixpkgs";

    catppuccin-userstyles.url = "github:catppuccin/userstyles";
    catppuccin-userstyles.flake = false;

    discord-userstyle.url = "https://catppuccin.github.io/discord/dist/catppuccin-mocha.theme.css";
    discord-userstyle.flake = false;
  };

  outputs = {
    nixpkgs,
    nix-colors,
    catppuccin-userstyles,
    discord-userstyle,
    ...
  }: let
    systems = [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];
    forAllSystems = f:
      builtins.listToAttrs (map (system: {
          name = system;
          value = f system;
        })
        systems);
  in {
    packages = forAllSystems (system: let
      pkgs = import nixpkgs {
        inherit system;
      };
      palette = nix-colors.colorSchemes.dracula.palette;
      mkUserStyles = import ./lib/mkUserStyles.nix {
        inherit pkgs;
        lib = pkgs.lib;
        inherit nix-colors catppuccin-userstyles discord-userstyle;
      };
    in {
      test = mkUserStyles palette [
        "brave-search"
        "bsky"
        "chatgpt"
        "cinny"
        "claude"
        "devdocs"
        "discord"
        "duckduckgo"
        "github"
        "google"
        "hacker-news"
        "lobste.rs"
        "nixos-*"
        "npm"
        "ollama"
        "perplexity"
        "qwant"
        "reddit"
        "spotify-web"
        "stack-overflow"
        "telegram"
        "whatsapp-web"
        "wikipedia"
        "youtube"
      ];
    });
  };
}
