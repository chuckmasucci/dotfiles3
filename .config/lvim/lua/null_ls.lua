local M = {}

M.config = function()
  print("null")
  local status_ok, nls = pcall(require, "null-ls")
  if not status_ok then
    return
  end

  local formatters = require "lvim.lsp.null-ls.formatters"
  formatters.setup {
    {
      exe = "stylelint",
      filetypes = {
        "css",
        "scss",
        "vue",
      },
    },
    {
      exe = "eslint_d",
      filetypes = {
        "javascriptreact",
        "javascript",
        "typescriptreact",
        "typescript",
        "vue",
      }
    }
  }
  local linters = require "lvim.lsp.null-ls.linters"
  linters.setup {
    {
      exe = "stylelint",
      filetypes = {
        "css",
        "scss",
        "vue",
      },
    },
    {
      exe = "eslint_d",
      filetypes = {
        "javascriptreact",
        "javascript",
        "typescriptreact",
        "typescript",
        "vue",
      },
    },
  }
end

return M
