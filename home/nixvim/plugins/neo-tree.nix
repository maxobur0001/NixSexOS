{lib, ...}: {
  plugins.neo-tree.enable = true;
  plugins.neo-tree.settings = {
    popup_border_style = "rounded";
    enable_git_status = true;
    enable_diagnostics = false;
    default_component_configs.git_status.symbols = {
      added = "";
      modified = "E";
      deleted = "D";
      renamed = "R";
      untracked = "?";
      ignored = "";
      unstaged = "";
      staged = "";
      conflict = "!";
    };
    window = {
      position = "float";
      width = 40;
    };
    nesting_rules = { };
    filesystem.filtered_items = {
      visible = true;
      hide_dotfiles = false;
      hide_gitignored = true;
    };
  };
  
  keymaps = [
    {
      key = "<leader>e"; 
      action = "<cmd>Neotree float<CR>";
      mode = "n";
    }
  ];
}
