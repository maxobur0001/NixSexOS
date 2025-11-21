{pkg, ...}: {
  plugins.cmp-nvim-lsp.enable = true;
  plugins.lsp.enable = true;

  plugins.lsp.preConfig = ''
  -- Disable inline error messages
  vim.diagnostic.config({
    virtual_text = false,
    float = {
      border = "single",
    },
  })

  local signs = {
    ["Hint"] = "󰋼",
    ["Info"] = "",
    ["Error"] = "",
    ["Warn"] = "",
  }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
  end
  '';

  # Nix expressions help
  plugins.lsp.servers.nixd.enable = true;

  # Lua Language Server
  plugins.lsp.servers.lua_ls = {
    enable = true;
    settings = {
      runtime.version = "LuaJIT";
      diagnostics.globals = [ "vim" ];
      workspace = {
        checkThirdParty = false;
        library = [
          "${../luals/starfall.lua}"
          "${../luals/glua}"
        ];
      };
    };
  };

  keymaps = [
    # Documentation
    {
      key = "K";
      action = { __raw = "vim.lsp.buf.hover"; };
      mode = "n";
      options.buffer = { __raw = "bufnr"; };
    }

    # Smart rename
    {
      key = "<leader>rn";
      action = { __raw = "vim.lsp.buf.rename"; };
      mode = "n";
      options.buffer = { __raw = "bufnr"; };
    }
  ];
}
