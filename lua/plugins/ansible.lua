return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ansiblels = {
        settings = {
          ansible = {
            python = {
              interpreterPath = "~/.pyenv/versions/ansible/bin/python",
            },
            ansible = {
              path = "~/.pyenv/versions/ansible/bin/ansible",
            },
            validation = {
              enabled = true,
              lint = {
                enabled = true,
                path = "~/.pyenv/versions/ansible/bin/ansible-lint",
              },
            },
          },
        },
      },
    },
  },
}
