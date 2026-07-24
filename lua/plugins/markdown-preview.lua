return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function()
    require("lazy").load({ plugins = { "markdown-preview.nvim" } })
    vim.fn["mkdp#util#install"]()
  end,
  keys = {
    {
      "<leader>cp",
      "<cmd>MarkdownPreviewToggle<cr>",
      ft = "markdown",
      desc = "Markdown Preview",
    },
  },
  config = function()
    vim.cmd([[do FileType]])
  end,
}
