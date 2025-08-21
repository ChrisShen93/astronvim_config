-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

  { import = "astrocommunity.colorscheme.catppuccin" },

  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.eslint" },
  { import = "astrocommunity.pack.oxlint" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.python-ruff" },

  { import = "astrocommunity.git.git-blame-nvim" },

  { import = "astrocommunity.project.project-nvim" },

  { import = "astrocommunity.utility.noice-nvim" },

  { import = "astrocommunity.bars-and-lines.vim-illuminate" },

  { import = "astrocommunity.lsp.lspsaga-nvim" },

  { import = "astrocommunity.recipes.vscode" },

  { import = "astrocommunity.fuzzy-finder.snacks-picker" },
}
