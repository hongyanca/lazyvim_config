return {
  {
    -- "rebelot/kanagawa.nvim",
    "EdenEast/nightfox.nvim",
    -- "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      palettes = {
        -- Custom duskfox with black background
        nightfox = {
          bg1 = "#080B10", -- Black background
          -- bg0 = "#000000", -- Alt backgrounds (floats, statusline, ...)
        },
        terafox = {
          bg1 = "#080B10", -- Black background
          -- bg0 = "#000000", -- Alt backgrounds (floats, statusline, ...)
        },
      },
    },
    lazy = false,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa-dragon",
      -- colorscheme = "carbonfox",
      colorscheme = "terafox",
      -- colorscheme = "nightfox",
      -- colorscheme = "tokyonight-moon",
      -- colorscheme = "tokyonight-night",
    },
  },
}
