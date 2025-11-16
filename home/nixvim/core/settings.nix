{lib, ...}: {
  colorschemes.catppuccin.enable = true;
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  opts = {
    hlsearch = true;
    number = true;
    relativenumber = true;
    mouse = "a";
    clipboard = "unnamedplus";
    breakindent = true;
    swapfile = false;
    backup = false;
    writebackup = false;
    undofile = true;
    undodir = "/tmp/undodir";
    ignorecase = true;
    smartcase = true;
    signcolumn = "yes";
    updatetime = 250;
    timeoutlen = 300;
    completeopt = "menuone,noselect";
    termguicolors = true;
    showmode = false;
    splitbelow = true;
    splitright = true;
    autoread = true;
    autoindent = true;
    smartindent = true;
    smarttab = true;
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;
    expandtab = true;
    wrap = true;
    linebreak = true;
    langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz";
    hidden = true;
    gdefault = true;
    cmdheight = 0;
    lazyredraw = true;
  };
}
