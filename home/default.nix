{ config, lib, pkgs, ... }: {
  home = {
    username = "maxobur0001";
    homeDirectory = "/home/maxobur0001";
    stateVersion = "25.11";
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
    ./gtk.nix
    ./fastfetch
    ./xdg.nix
  ];
}
