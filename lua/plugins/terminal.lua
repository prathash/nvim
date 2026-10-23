return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<leader>`]],
      direction = "float",
      float_opts = {
        border = "rounded",
      },
    })
  end,
}
