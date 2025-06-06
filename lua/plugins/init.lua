-- lua/plugins/init.lua
-- Bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- collect all plugin specs
require("lazy").setup({
  require("plugins.plenary"),
  require("plugins.nvim-tree"),
  require("plugins.copilot"),
  require("plugins.copilotchat"),
  require("plugins.nerdcommenter"),
  require("plugins.telescope"),
})
