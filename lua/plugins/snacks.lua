local Snacks = require "snacks"

return {
  "folke/snacks.nvim",
  keys = {
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
    -- { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },

    { "grr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
    { "<leader>lR", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
  },
}
