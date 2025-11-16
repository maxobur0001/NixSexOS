{...}: {
  plugins.floaterm.enable = true;
  keymaps = [
    {
      key = "<leader>ft";
      action = "<cmd>FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 zsh<CR>";
      mode = "n";
    }
    {
      key = "t";
      action = "<cmd>FloatermToggle myfloat<CR>";
      mode = "n";
    }
    {
      key = "<Esc>";
      action = "<C-\\><C-n><cmd>q<CR>";
      mode = "t";
    }
  ];
}
