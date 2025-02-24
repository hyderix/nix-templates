{
  description = "hyderix collection of nix templates";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = {self}: {
    templates = {
      unstable-flake = {
        path = ./unstable-flake;
        description = "A basic flake template with unstable nixpkgs";
      };
    };
  };
}
