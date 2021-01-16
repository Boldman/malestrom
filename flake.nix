{
  description = "Malestrom configuration";

  inputs = {
    nixpkgs = {
      type  = "github";
      owner = "NixOS";
      repo  = "nixpkgs";
      ref   = "nixpkgs-unstable";
    };
    home-manager = {
      type = "github";
      owner = "rycee";
      repo = "home-manager";
      ref = "master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { home-manager, nixpkgs, ... }: {
    nixosConfigurations = {
      tx220 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.jak = import ./home.nix;
          }
        ];
      };
    };
  };
}
