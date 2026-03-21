{lib, ...}: {
  xsession.windowManager.i3 = {
    enable = true;
    config = {
      terminal = "kitty";
      fonts = {
        names = [ "3270 Nerd Font Mono" ];
        size = 13.0;
      };
      window = {
        border = 2;
        titlebar = false;
      };
      gaps = {
        inner = 8;
        top = 8;
        left = 8;
        bottom = 8;
        right = 8;
      };
      colors = {
        background = "#FFFFFF";
        focused = {
          background = "#FFFFFF";
          border = "#FFFFFF";
          text = "#000000";
          indicator = "#ffffff";
          childBorder = "#ffffff";
        };
        unfocused = {
          background = "#262626";
          border = "#262626";
          text = "#E6E6E6";
          indicator = "#ffffff";
          childBorder = "#262626";
        };
        urgent = {
          background = "#AC6D74";
          border = "#AC6D74";
          text = "#000000";
          indicator = "#ffffff";
          childBorder = "#AC6D74";
        };
      };
      startup = [
        { command = "dunst"; notification = true; }
        { command = "feh --bg-center ${./wallpaper.jpg}"; }
      ];
      keybindings = let
        wss = lib.lists.range 0 9;
      in {
        "mod4+t" = "exec kitty";
        "mod4+q" = "kill";
        "mod4+space" = "exec dmenu_run";
        "mod4+Shift+e" = "exec i3-msg exit";

        "XF86AudioRaiseVolume" = "exec ${./scripts/media} volume_up";
        "XF86AudioLowerVolume" = "exec ${./scripts/media} volume_down";
        "XF86AudioPlay" = "exec ${./scripts/media} play_pause";
        "XF86AudioMute" = "exec ${./scripts/media} volume_mute";
        "mod4+Shift+3" = "exec ${./scripts/screenshot}";
        "mod4+Shift+4" = "exec ${./scripts/selection-screenshot}";

        "mod4+h" = "focus left";
        "mod4+j" = "focus down";
        "mod4+k" = "focus up";
        "mod4+l" = "focus right";

        "mod4+Shift+h" = "move left";
        "mod4+Shift+j" = "move down";
        "mod4+Shift+k" = "move up";
        "mod4+Shift+l" = "move right";

        "mod4+plus" = "resize grow width 10 px or 10 ppt";
        "mod4+minus" = "resize shrink width 10 px or 10 ppt";
        "mod4+Shift+plus" = "resize grow height 10 px or 10 ppt";
        "mod4+Shift+minus" = "resize shrink height 10 px or 10 ppt";

        "mod4+Shift+v" = "fullscreen";
        "mod4+v" = "floating toggle";
        "mod4+c" = "move position center";

        "mod4+w" = "layout tabbed";
        "mod4+e" = "layout toggle split";
        "mod4+d" = "splith";
        "mod4+s" = "splitv";

        "XF86MonBrightnessDown" = "exec brightnessctl set 1%-";
        "XF86MonBrightnessUp" = "exec brightnessctl set 1%+";

        "mod4+Ctrl+h" = "workspace prev";
        "mod4+Ctrl+l" = "workspace next";

        "mod4+Shift+Ctrl+h" = "move container to workspace prev; workspace prev";
        "mod4+Shift+Ctrl+l" = "move container to workspace next; workspace next";
      }
        // builtins.listToAttrs (
          map (w: let
            str = toString w;
          in { 
            name = "mod4+Ctrl+${str}";
            value = "workspace number ${str}";
          }) wss 
        )
        // builtins.listToAttrs (
          map (w: let
              str = toString w;
            in { 
            name = "mod4+Shift+Ctrl+${str}";
            value = "move container to workspace number ${str}; workspace number ${str}";
          }) wss 
        );
    };
  };
}
