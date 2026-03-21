{ pkgs, ...}: {
  programs.kitty = {
    enable = true;
    font = {
      package = pkgs.nerd-fonts._3270;
      name = "3270 Nerd Font Mono";
      size = 13;
    };
    shellIntegration.enableZshIntegration = true;
    settings = {
      enable_audio_bell = false; 
      window_padding_height = 25;
      window_padding_width = 25;
      confirm_os_window_close = 0;
    };
  };
  programs.kitty.extraConfig = ''
# The basic colors
foreground #FFFFFF
background #000000
selection_foreground #000000
selection_background #FFFFFF

# Cursor colors
cursor #FFFFFF
cursor_text_color #000000

# URL underline color when hovering with mouse
url_color #FFFFFF

# OS Window titlebar colors
wayland_titlebar_color system
macos_titlebar_color system

# black
color0 #000000
color8 #262626

# red
color1 #AC6D74
color9 #D6B8BC

# green
color2  #74AC6D
color10 #BCD6B8

# yellow
color3  #ACA46D
color11 #D6D3B8

# blue
color4  #6D74AC
color12 #B8BCD6

# magenta
color5  #A46DAC
color13 #D3B8D6

# cyan
color6  #6DACA4
color14 #B8D6D3

# white
color7  #E6E6E6
color15 #FFFFFF
  '';
}
