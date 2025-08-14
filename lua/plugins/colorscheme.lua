return {
  "AstroNvim/astroui",
  enabled = not vim.g.vscode,
  -- opts = {
  --   -- change colorscheme
  --   colorscheme = "catppuccin-frappe",
  -- },
  opts = function(_, opts)
    opts.colorscheme = "catppuccin-frappe"

    require("catppuccin").setup {
      flavour = "frappe",
      transparent_background = true,
      float = {
        transparent = false, -- enable transparent floating windows
        solid = false, -- use solid styling for floating windows, see |winborder|
      },
    }

    -- require("notify").setup {
    --   background_colour = "#000000",
    --   merge_duplicates = true,
    -- }
  end,
}
