return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select Virtual Env" },
  },
}
