return {
  {
    -- "rebelot/kanagawa.nvim",
    -- "folke/tokyonight.nvim",
    "EdenEast/nightfox.nvim",
    priority = 1000,
    opts = {
      transparent = true,
      options = {
        styles = {
          comments = "italic",
          keywords = "bold",
        },
      },
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
