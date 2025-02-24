{
  description = "A basic template for a development shell for use with `nix develop`";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    utils,
  } @ inputs:
    utils.lib.eachDefaultSystem (system: let
      pkgs = import <nixpkgs> {inherit system;};
    in {
      devShells."${system}".default = pkgs.mkShell {
        name = "Development shell";
        packages = with pkgs; [
          /*
          TODO: add packages
          */
        ];
      };
    });
}
