{...}: {
  plugins.lualine.enable = true;
  plugins.lualine.settings = {
    options = {
      extensions = [ "neo-tree" ];
      disabled_filetypes.statusline = [ "packer" "neo-tree" "trouble" ];
      theme = let
        colors = {
          bg = "#1e1e2e";
          fg = "#cdd6f4";
          alt_bg = "#89b4fa";
          alt_fg = "#1e1e2e";
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
        separator = { right = ""; left = ""; };
        padding = { left = 1; right = 1; };
      } ];

      lualine_c = [ {} ];
      lualine_x = [ {} ];

      # Clock
      lualine_y = [ {
        __unkeyed-1 = "datetime";
        style = "%H:%M:%S";
        separator = { right = ""; left = ""; };
        padding = { left = 1; right = 1; };
      } ];

      lualine_z = [ {} ];
    };
  };
}
