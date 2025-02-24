{
  description = "hyderix collection of nix templates";

  outputs = {self}: {
    templates = {
      unstable-flake = {
        path = ./unstable-flake;
        description = "A basic flake template with unstable nixpkgs";
      };
    };
  };
}
