local M = {}

function M.setup()
  local cmp = require("cmp")

  cmp.setup({
    mapping = cmp.mapping.preset.insert({
      ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = {
      { name = "nvim_lsp" },
      { name = "buffer" },
      { name = "path" },
    },
  })
end

return M
