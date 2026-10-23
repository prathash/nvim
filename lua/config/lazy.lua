local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Clone lazy.nvim if not installed
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

-- Add lazy.nvim to runtime path
vim.opt.rtp:prepend(lazypath)

-- SAFETY CHECK
local ok, lazy = pcall(require, "lazy")
if not ok then
  vim.notify("lazy.nvim failed to load", vim.log.levels.ERROR)
  return
end

lazy.setup("plugins")
