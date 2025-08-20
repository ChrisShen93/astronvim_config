return {
  "AstroNvim/astrolsp",
  opts = function(_, opts)
    local maps = opts.mappings

    -- references
    -- https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/lsp/lspsaga-nvim/init.lua#L43C11-L48C15
    maps.n["grr"] = {
      "<Cmd>Lspsaga finder<CR>",
      desc = "Search references",
      cond = function(client)
        return client.supports_method "textDocument/references" or client.supports_method "textDocument/implementation"
      end,
    }

    -- rename
    -- https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/lsp/lspsaga-nvim/init.lua#L50C1-L53C102
    maps.n["grn"] = { "<Cmd>Lspsaga rename<CR>", desc = "Rename current symbol", cond = "textDocument/rename" }
  end,
}
