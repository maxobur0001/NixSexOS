{lib, ...}: {
  keymaps = [
    # Unbind space, to use it as leader
    {
      key = "<Space>"; 
      action = "<Nop>";
      mode = ["n" "v"];
      options.silent = true;
    }

    # Split editor vertical
    { key = "vv"; action = "<C-W>v"; mode = "n"; }

    # Split editor horizontal
    { key = "ss"; action = "<C-W>s"; mode = "n"; }

    # Move focus between areas
    { key = "<C-h>"; action = "<C-W>h"; mode = "n"; }
    { key = "<C-j>"; action = "<C-W>j"; mode = "n"; }
    { key = "<C-k>"; action = "<C-W>k"; mode = "n"; }
    { key = "<C-l>"; action = "<C-W>l"; mode = "n"; }

    # Tab to edit indent in visual mode
    { key = "<Tab>"; action = ">gv"; mode = "v"; }
    { key = "<S-Tab>"; action = "<gv"; mode = "v"; }

    # Esc to close a search
    { key = "<Esc>"; action = "<cmd>nohlsearch<CR>"; mode = "n"; }
  ];
}
