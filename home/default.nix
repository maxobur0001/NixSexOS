{ config, lib, pkgs, ... }: {
  home = {
    username = "maxobur0001";
    homeDirectory = "/home/maxobur0001";
    stateVersion = "25.05";
    packages = [ ];
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
    ./obs-studio.nix
    ./gtk.nix
  ];
}
