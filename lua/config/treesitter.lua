local M = {}

function M.setup()
  require("nvim-treesitter.configs").setup({
    ensure_installed = {
      "lua",
      "python",
      "java",
      "javascript",
      "html",
      "css",
      "json",
    },
    highlight = { enable = true },
  })
end

return M
