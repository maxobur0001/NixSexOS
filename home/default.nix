{ config, lib, pkgs, ... }: {
  home = {
    username = "maxobur0001";
    homeDirectory = "/home/maxobur0001";
    stateVersion = "25.05";
    packages = with pkgs; [
    
    ];
  };

  imports = [
    ./kitty.nix
    ./zsh.nix
    ./nixvim
    ./niri
    ./rofi
    ./qutebrowser
    ./dunst.nix
    ./gh.nix
    ./xdg.nix
  ];
}
