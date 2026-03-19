{ config, pkgs, lib, ...}: {
  services.dunst.enable = true;
  services.dunst.settings = {
    global = {
      width = "(0,600)";
      origin = "top-center";
      offset = "(0,100)";

      progress_bar_min_width = 200;
      progress_bar_max_width = 1000;

      padding = 12;
      separator_height = 0;
      horizontal_padding = 12;
      frame_width = 2;
      gap_size = 2;
      font = "3270 Nerd Font Bold 17";
      max_icon_size = 81;

      background = "#000000";
      foreground = "#FFFFFF";
      frame_color = "#FFFFFF";
      highlight = "#FFFFFF";
    };

    service = {
      appname = "service";
      timeout = "1s";
      urgency = "low";
      alignment = "center";
    };

    screenshot = {
      appname = "screenshot";
      timeout = "3s";
      urgency = "normal";
      alignment = "center";
      max_icon_size = 128;
    };
  };
}
