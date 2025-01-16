-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec

return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      local logo = [[
                   _oo0oo_
                  o8888888o
                  88" . "88
                  (| -_- |)
                  0\  =  /0
                ___/`---'\___
              .' \\|     |// '.
             / \\|||  :  |||// \
            / _||||| -:- |||||- \
           |   | \\\  - /// |   |
           | \_|  ''\---/''  |_/ |
           \  .-\__  '-'  ___/-. /
         ___'. .'  /--.--\  `. .'___
      ."" '<  `.___\_<|>_/___.' >' "".
     | | :  `- \`.;`\ _ /`;.`/ - ` : | |
     \  \ `_.   \_ __\ /__ _/   .-` /  /
 =====`-.____`.___ \_____/___.-`___.-'=====
                   `=---='


 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    佛祖保佑       永不宕机     永无BUG
      ]]

      opts.section.header.val = vim.split(logo, "\n")
      return opts
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
          ["-"] = "split_with_window_picker",
          ["|"] = "vsplit_with_window_picker",
        },
      },
    },
  },

  {
    "AstroNvim/astrolsp",
    opts = function(_, opts)
      local maps = opts.mappings
      maps.n["grr"] = {
        "<Cmd>Lspsaga finder<CR>",
        desc = "Search references",
        cond = function(client)
          return client.supports_method "textDocument/references"
            or client.supports_method "textDocument/implementation"
        end,
      }
    end,
  },

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
      }

      require("notify").setup {
        background_colour = "#000000",
        merge_duplicates = true,
      }
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      default_component_configs = {
        file_size = {
          enabled = false,
        },
        type = {
          enabled = false,
        },
        last_modified = {
          enabled = false,
        },
        created = {
          enabled = false,
        },
      },
    },
  },
}
