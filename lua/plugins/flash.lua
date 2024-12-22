return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    -- disable the default flash keymap
    { "s", mode = { "n", "x", "o" }, false },
    { "<leader>sf", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
  },
}
