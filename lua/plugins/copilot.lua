return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  init = function()
    vim.filetype.add({
      pattern = {
        [".*vault.*%.yml"] = "ansible_vault",
        [".*vault.*%.yaml"] = "ansible_vault",
      },
    })
  end,
  opts = {
    filetypes = {
      ["*"] = true,
      ansible_vault = false,
      ["yaml.ansible_vault"] = false,
      gitcommit = false,
      gitrebase = false,
      help = false,
      ["."] = false,
    },
  },
}
