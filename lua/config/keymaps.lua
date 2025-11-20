-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set({ "n", "t" }, "<c-\\>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Window navigation with Alt + Arrow keys
vim.keymap.set("n", "<A-Left>", "<C-w>h", { noremap = true, silent = true, desc = "Focus left window" })
vim.keymap.set("n", "<A-Right>", "<C-w>l", { noremap = true, silent = true, desc = "Focus right window" })
vim.keymap.set("n", "<A-Up>", "<C-w>k", { noremap = true, silent = true, desc = "Focus top window" })
vim.keymap.set("n", "<A-Down>", "<C-w>j", { noremap = true, silent = true, desc = "Focus bottom window" })

-- Also enable in insert mode if you want
vim.keymap.set("i", "<A-Left>", "<C-o><C-w>h", { noremap = true, silent = true, desc = "Focus left window" })
vim.keymap.set("i", "<A-Right>", "<C-o><C-w>l", { noremap = true, silent = true, desc = "Focus right window" })
vim.keymap.set("i", "<A-Up>", "<C-o><C-w>k", { noremap = true, silent = true, desc = "Focus top window" })
vim.keymap.set("i", "<A-Down>", "<C-o><C-w>j", { noremap = true, silent = true, desc = "Focus bottom window" })

-- Instert newline without entering insert mode
vim.keymap.set("n", "<CR>", "m`o<Esc>``")
vim.keymap.set("n", "<S-CR>", "m`O<Esc>``")
