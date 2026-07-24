-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local number_toggle_group = vim.api.nvim_create_augroup("NumberToggle", { clear = true })
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter", "CmdlineEnter" }, {
  group = number_toggle_group,
  pattern = "*",
  callback = function()
    if vim.o.number then
      vim.opt_local.relativenumber = false
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave", "CmdlineLeave" }, {
  group = number_toggle_group,
  pattern = "*",
  callback = function()
    if vim.o.number and vim.api.nvim_get_mode().mode ~= "i" then
      vim.opt_local.relativenumber = true
    end
  end,
})
