{pkg, ...}: {
  plugins.web-devicons.enable = true;
  plugins.telescope.enable = true;
  keymaps = [
    # Buffers
    { key = "<leader>b"; action = "<cmd>Telescope buffers<CR>"; mode = "n"; }
    # Find files
    { key = "<leader>f"; action = "<cmd>Telescope find_files<CR>"; mode = "n"; }
  ];
}
