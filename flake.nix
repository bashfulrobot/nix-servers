{
  description = "NixOS  Server configuration for nixdo";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  };

  outputs =
    inputs@{ self, nixpkgs, ... }: {
      nixosConfigurations = {
        # nixdo= work laptop hostname
        nixdo= nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./hosts/nixdo/configuration.nix
          ];
        };
      };
    };
}
