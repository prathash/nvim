local M = {}

function M.colors()
  vim.cmd("colorscheme tokyonight")
end

function M.lualine()
  require("lualine").setup({
    options = { theme = "tokyonight" },
  })
end

return M
