-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jj", "<Esc>", { silent = true })

-- Practical Vim 2ed, Tip 62 - Replace a Visual Selection with a Register
-- The visual selection swaps places with the text in the register.
-- To mitigate this side effect
-- ThePrimeagen's remap: it puts the visual selection in the black hole register
vim.keymap.set("v", "<leader>P", '"_dP', { noremap = true, silent = true })

-- vim.keymap.set("n", "s", "xi", { noremap = true, silent = true })
