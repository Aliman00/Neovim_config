-- lua/plugins/nerdcommenter.lua
-- Add preservim/nerdcommenter
return {
  "preservim/nerdcommenter",
  -- Optional: any nerdcommenter-specific settings
  config = function()
    -- Example: toggle comments with <leader>c
    vim.g.NERDCommenterToggleHotkey = "<leader>c"
    -- You can add more g:NERDCommenter settings here:
    -- vim.g.NERDCommenterAlign = "left"
  end,
}
