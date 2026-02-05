{
  description = "The really SexOS configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim.url = "github:nix-community/nixvim";
  };
  outputs = { nixpkgs, nixpkgs-unstable, home-manager, niri, nixvim, ... }@inputs: 
    let
      system = "x86_64-linux";
      pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};

      # This lets us reuse the code to "create" a system
      # Credits go to sioodmy on this one!
      # https://github.com/sioodmy/dotfiles/blob/main/flake.nix
      mkSystem = pkgs: system: hostname:
        pkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit inputs;
            inherit pkgs-unstable;
          };
          modules = [
            niri.nixosModules.niri
            { networking.hostName = hostname; }
            ./configuration.nix
            ./hosts/${hostname}/hardware-configuration.nix
          ];
        };

  in {
    nixosConfigurations = {
      sexos = mkSystem nixpkgs system "sexos";
      worldmachine = mkSystem nixpkgs system "worldmachine";
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
