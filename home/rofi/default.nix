{...}: {
  programs.rofi = {
    enable = true;
    theme = ./doomer.rasi;
    extraConfig = {
      show-icons = true;
      display-drun = "";
      drun-display-format = "{icon} {name}";
    };
  };
}
