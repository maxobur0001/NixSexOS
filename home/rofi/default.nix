{ config, pkgs, lib, ...}: {
  programs.rofi = {
    enable = true;
    theme = ./worldmachine.rasi;
    extraConfig = {
      show-icons = true;
      display-drun = "";
      drun-display-format = "{icon} {name}";
    };
  };
}
