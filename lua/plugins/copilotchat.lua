-- lua/plugins/copilotchat.lua
return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = { "github/copilot.vim" },
  event = "VeryLazy",
  config = function()
    require("CopilotChat").setup({})
  end,
}
