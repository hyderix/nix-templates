{
  description = "hyderix collection of nix templates";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    templates = {
      unstable-flake = {
        path = ./unstable-flake;
        description = "A basic flake template with unstable nixpkgs";
      };
    };

    packages."${system}" = {
      format-script = pkgs.writeShellScriptBin "formatting" ''
        echo Formatting markdown files
        ${pkgs.nodePackages.prettier}/bin/prettier --write $(find . -name '*.md')

        echo Formatting nix files
        ${pkgs.alejandra}/bin/alejandra $(find . -name '*.nix')
      '';
    };
  };
}
