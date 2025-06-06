-- Notify on startup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.notify("If you see this, lazy.nvim and your config are loading!", vim.log.levels.WARN)
  end
})


-- If nvim is opened with a directory (e.g. `nvim .`), run Telescope find_files
-- vim.api.nvim_create_autocmd("VimEnter", {
  -- callback = function(data)
    -- local target = data.file  -- what Vim tried to open
    -- if vim.fn.isdirectory(target) == 1 then
      -- -- switch to that dir
      -- vim.cmd("cd " .. vim.fn.fnameescape(target))
      -- -- launch find_files in that cwd
      -- require("telescope.builtin").find_files({ cwd = target })
    -- end
  -- end,
-- })


