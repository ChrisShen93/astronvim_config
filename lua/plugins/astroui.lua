-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  {
    "AstroNvim/astroui",
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
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "s1n7ax/nvim-window-picker",
      config = function()
        require("window-picker").setup {
          autoselect_one = true,
          include_current = false,
          selection_chars = "ABCDEFGHIJKLMN",
          filter_rules = {
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              filetype = { "neo-tree", "neo-tree-popup", "notify" },

              -- if the buffer type is one of following, the window will be ignored
              buftype = { "terminal", "quickfix" },
            },
          },
          -- other_win_hl_color = '#e35e4f',
        }
      end,
    },
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        auto_expand_width = true,
        mappings = {
          ["o"] = "open_with_window_picker",
          ["s"] = "split_with_window_picker",
          ["S"] = "split_with_window_picker",
          ["\\"] = "split_with_window_picker",
          ["|"] = "vsplit_with_window_picker",
        },
      },
    },
  },
}
