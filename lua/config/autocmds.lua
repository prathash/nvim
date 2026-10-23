-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
})

-- Auto resize splits
vim.api.nvim_create_autocmd("VimResized", {
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})
