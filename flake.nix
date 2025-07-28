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

  outputs = {nixpkgs, ...} @ inputs: let
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
        inherit (inputs) nixpkgs;
      };
    in {
      mkUserStyles = pkgs.callPackage ./lib/mkUserStyles.nix inputs;
    });
  };
}
