{lib, ...}: {
  plugins.indent-blankline.enable = true;
  plugins.indent-blankline.settings = {
    scope = { enabled = false; };
    indent = { char = "│"; };
  };
}
