-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.tabstop = 2

-- Normal line numbers
vim.opt.relativenumber = false
vim.opt.number = true

-- Sync clipboard between OS and Neovim
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)
