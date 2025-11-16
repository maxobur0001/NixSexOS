{lib, ...}: {
  plugins.cmp.enable = true;
  plugins.cmp-buffer.enable = true;
  plugins.cmp-path.enable = true;
  plugins.luasnip.enable = true;
  plugins.friendly-snippets.enable = true;
  plugins.lspkind.enable = true;

  plugins.luasnip.fromVscode = [ {} ];
  plugins.cmp.settings = {
    completion.completeopt = "menu,menuone,preview,noselect";
    snippet.expand = ''function(args)
      require("luasnip").lsp_expand(args.body)
    end'';
    mapping = {
      "<C-k>" = "cmp.mapping.select_prev_item()";
      "<C-j>" = "cmp.mapping.select_next_item()";
      "<C-b>" = "cmp.mapping.scroll_docs(-4)";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-e>" = "cmp.mapping.abort()";
      "<CR>" = "cmp.mapping.confirm({ select = false })";
      "<Tab>" = ''cmp.mapping(function(fallback)
        local has_words_before = function()
          unpack = unpack or table.unpack
          local line, col = unpack(vim.api.nvim_win_get_cursor(0))
          return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
        end
        local luasnip = require("luasnip")
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, { "i", "s" })'';
      "<S-Tab>" = ''cmp.mapping(function(fallback)
        local luasnip = require("luasnip")
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { "i", "s" })'';
    };

    sources = [
      { name = "nvim_lsp"; }
      { name = "luasnip"; }
      { name = "buffer"; }
      { name = "path"; }
    ];

    formatting.format = lib.mkForce ''require("lspkind").cmp_format({
        maxwidth = 50,
        ellipsis_char = "...",
    })'';
  };
}
