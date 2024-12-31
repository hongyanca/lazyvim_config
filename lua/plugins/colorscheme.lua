return {
  {
    -- "rebelot/kanagawa.nvim",
    "EdenEast/nightfox.nvim",
    -- "folke/tokyonight.nvim",
    priority = 1000,
    opts = {},
    lazy = false,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa-dragon",
      -- colorscheme = "carbonfox",
      -- colorscheme = "terafox",
      colorscheme = "nightfox",
      -- colorscheme = "tokyonight-moon",
      -- colorscheme = "tokyonight-night",
    },
  },
}
