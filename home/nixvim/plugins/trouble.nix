{...}: {
  plugins.trouble.enable = true;
  plugins.trouble.settings = {
    auto_close = true;
    focus = false;
    diagnostics.auto_open = true;
  };

  keymaps = [
    {
      key = "<leader>t";
      action = "<cmd>Trouble diagnostics toggle<CR>";
      mode = "n";
    }
  ];
}
