let
  flake = builtins.getFlake (toString ./.);
  nix-colors = builtins.getFlake "github:misterio77/nix-colors";
  palette = nix-colors.outputs.colorSchemes.dracula.palette;
in
  flake.outputs.packages.${builtins.currentSystem}.mkUserStyles palette [
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
  ]
