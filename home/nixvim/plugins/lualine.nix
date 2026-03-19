{...}: {
  plugins.lualine.enable = true;
  plugins.lualine.settings = {
    options = {
      extensions = [ "neo-tree" ];
      disabled_filetypes.statusline = [ "packer" "neo-tree" "trouble" ];
      theme = let
        colors = {
          bg = "#000000";
          fg = "#FFFFFF";
          alt_bg = "#E6E6E6";
          alt_fg = "#000000";
        };
      in {
        normal = {
          a = { bg = colors.bg; fg = colors.fg; };
          b = { bg = colors.alt_bg; fg = colors.alt_fg; };
          c = { fg = colors.fg; bg = colors.bg; };
          x = { fg = colors.fg; bg = colors.bg; };
          y = { fg = colors.alt_fg; bg = colors.alt_bg; };
          z = { fg = colors.fg; bg = colors.bg; };
        };
      };
    };
    
    sections = {
      lualine_a = [ {} ];

      # Mode
      lualine_b = [ {
        __unkeyed-1 = "mode";
        separator = { right = "█"; left = "█"; };
        padding = { left = 1; right = 1; };
      } ];

      lualine_c = [ {
        __unkeyed-1 = "filename";
        # padding = { left = 1; right = 1; };
      } ];
      lualine_x = [ {
        __unkeyed-1 = "searchcount";
      } ];

      # Clock
      lualine_y = [ {
        __unkeyed-1 = "datetime";
        style = "%H:%M:%S";
        separator = { right = "█"; left = "█"; };
        padding = { left = 1; right = 1; };
      } ];

      lualine_z = [ {} ];
    };
  };
}
