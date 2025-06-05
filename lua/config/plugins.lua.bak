
-- Bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
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
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- File explorer
  { "nvim-tree/nvim-tree.lua" },
  { "nvim-lua/plenary.nvim" },

  -- GitHub Copilot plugin (required for CopilotChat)
  {
    "github/copilot.vim",
    config = function()
      -- Optional: Copilot-specific config
      -- You may want to run :Copilot setup or :Copilot auth manually the first time
    end,
  },

  -- CopilotChat.nvim
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = { "github/copilot.vim" }, -- or "zbirenbaum/copilot.lua" if you prefer
    config = function()
      require("CopilotChat").setup({})
    end,
    event = "VeryLazy", -- Loads plugin on demand, can change as needed
  },
})

-- Additional configuration for nvim-tree

