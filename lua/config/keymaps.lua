-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Copilot inline completions - Shift+Tab accepts ghost suggestions
vim.keymap.set("i", "<S-Tab>", function()
  if vim.lsp.inline_completion.get() then
    vim.lsp.inline_completion.select({ count = 1 })
    vim.lsp.inline_completion.accept()
  else
    vim.cmd("normal! <S-Tab>")
  end
end, { noremap = true })
