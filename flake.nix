{
  description = "The really SexOS configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim.url = "github:nix-community/nixvim";
  };
  outputs = { nixpkgs, home-manager, niri, nixvim, ... }: 
    let
      system = "x86_64-linux";
    in {
    nixosConfigurations.sexos = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        niri.nixosModules.niri
        ./configuration.nix
      ];
    };
    homeConfigurations.maxobur0001 = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [
        niri.homeModules.niri
        nixvim.homeModules.nixvim
        ./home
      ];
    };
  };
}
