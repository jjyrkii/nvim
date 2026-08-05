return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        yaml = { "prettier" },
        ["yaml.ansible"] = { "prettier" },
      },
    },
  },
  { "mason-org/mason.nvim" },
  opts = { ensure_installed = { "prettier" } },
}
