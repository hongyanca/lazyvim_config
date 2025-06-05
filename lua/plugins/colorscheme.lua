return {
  {
    -- "EdenEast/nightfox.nvim",
    "webhooked/kanso.nvim",

    lazy = false,
    priority = 1000,

    -- kanso.nvim options
    opts = {
      bold = true,
      italics = true,
      transparent = true,
    },

    -- nightfox.nvim options
    -- opts = {
    --   transparent = true,
    --   options = {
    --     styles = {
    --       comments = "italic",
    --       keywords = "bold",
    --     },
    --   },
    --   palettes = {
    --     -- Custom duskfox with black background
    --     nightfox = {
    --       bg1 = "#080B10", -- Black background
    --       -- bg0 = "#000000", -- Alt backgrounds (floats, statusline, ...)
    --     },
    --     terafox = {
    --       bg1 = "#080B10", -- Black background
    --       -- bg0 = "#000000", -- Alt backgrounds (floats, statusline, ...)
    --     },
    --   },
    -- },
  },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "carbonfox",
      -- colorscheme = "terafox",
      -- colorscheme = "nightfox",
      -- colorscheme = "kanso-ink",
      colorscheme = "kanso-zen",
    },
  },

  -- lualine configuration for kanso theme only
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      local ok, lazyvim = pcall(require, "lazyvim.config")
      local colorscheme = ok and lazyvim.colorscheme or vim.g.colors_name
      if colorscheme == "kanso" or colorscheme == "kanso-zen" or colorscheme == "kanso-ink" then
        -- Remove clock from lualine_z if present
        if opts.sections and opts.sections.lualine_z then
          local z = opts.sections.lualine_z
          if type(z) == "table" then
            -- Remove last element (assumed to be clock)
            table.remove(z, #z)
          end
        end
        opts = vim.tbl_deep_extend("force", opts or {}, {
          options = {
            section_separators = "",
            component_separators = "",
          },
        })
      end
      return opts
    end,
  },
}
