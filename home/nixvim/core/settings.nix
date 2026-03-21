{lib, ...}: {
  # colorschemes.base16.enable = true;
  colorschemes.base16.colorscheme = {
    base00 = "#000000";
    base01 = "#262626";

    base02 = "#262626";
    base03 = "#262626";

    base04 = "#E6E6E6";
    base05 = "#FFFFFF";

    base06 = "#ACA46D";
    base07 = "#D6D3B8";

    base08 = "#AC6D74";
    base09 = "#B8BCD6";

    base0A = "#ACA46D";
    base0B = "#74AC6D";

    base0C = "#BCD6B8";
    base0D = "#6D74AC";

    base0E = "#A46DAC";
    base0F = "#ACA46D";
  };
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
  userCommands = {
    "Love" = {
      command = ":FloatermNew love ./";
    };
  };
}
