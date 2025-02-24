{
  description = "A basic flake template with unstable nixpkgs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  } @ inputs: {
  };
}
