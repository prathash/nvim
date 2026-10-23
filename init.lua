vim.g.netrw_banner = 0
require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.lazy")


vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = "*",
  callback = function()
    if vim.bo.modified and vim.bo.buftype == "" then
      vim.cmd("silent write")
    end
  end,
})
