-- Notify on startup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.notify("If you see this, lazy.nvim and your config are loading!", vim.log.levels.WARN)
  end
})