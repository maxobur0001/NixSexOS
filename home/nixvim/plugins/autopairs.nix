{pkg, ...}: {
  plugins.treesitter.enable = true;
  plugins.nvim-autopairs.enable = true;
  plugins.nvim-autopairs.settings = {
    check_ts = true;
    ts_config = {
      lua = [ "string" ];
      java = false;
    };
  };
}
