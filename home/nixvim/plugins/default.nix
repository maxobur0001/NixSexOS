{lib, ...}: {
  imports = [
    ./lualine.nix
    ./neo-tree.nix
    ./indent-blankline.nix
    ./telescope.nix
    ./autopairs.nix
    ./nvim-cmp.nix
    ./nvim-lspconfig.nix
    ./trouble.nix
    ./terminal.nix
    ./comment.nix
  ];
}
