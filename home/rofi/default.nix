{ config, pkgs, lib, ...}: {
  programs.rofi = {
    package = pkgs.rofi-wayland;
    enable = true;
    theme = ./worldmachine.rasi;
    extraConfig = {
      show-icons = true;
      display-drun = "";
      drun-display-format = "{icon} {name}";
    };
  };
}
