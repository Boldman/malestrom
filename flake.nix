#
# This file is auto-generated from "README.org"
#
{
  description = "Malestrom configuration";

  inputs = {
    nixpkgs = {
      type  = "github";
      owner = "NixOS";
      repo  = "nixpkgs";
      ref   = "nixpkgs-unstable";
    };
    nixpkgs-stable = {
      type = "github";
      owner = "NixOS";
      repo = "nixpkgs";
      ref = "nixos-20.09";
    };
    home-manager = {
      type = "github";
      owner = "nix-community";
      repo = "home-manager";
      ref = "master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-hardware = {
      type = "github";
      owner = "NixOS";
      repo = "nixos-hardware";
      flake = false;
    };
    emacs-overlay = {
      type = "github";
      owner = "nix-community";
      repo = "emacs-overlay";
    };
  };

  outputs = { home-manager, nixpkgs, ... }@inputs:
   {
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
