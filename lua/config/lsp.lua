local M = {}

function M.setup()
  -- Python
  vim.lsp.config("pyright", {
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          useLibraryCodeForTypes = true,
        },
      },
    },
  })

  -- TypeScript / JavaScript
  vim.lsp.config("ts_ls", {})

  -- HTML / CSS
  vim.lsp.config("html", {})
  vim.lsp.config("cssls", {})
end

return M
