-- lua/plugins/nerdcommenter.lua
-- Add preservim/nerdcommenter
return {
  "preservim/nerdcommenter",
  -- Optional: any nerdcommenter-specific settings
  config = function()
    -- Don’t rely on ToggleHotkey; clear it so NerdCommenter won’t do its own mapping
     vim.g.NERDCommenterToggleHotkey = ""

    -- Ensure there’s a space between the delimiter and your text
     vim.g.NERDSpaceDelims = 1

    -- Map <leader>c in normal & visual to the toggle action
     vim.keymap.set("n", "<leader>c", "<Plug>NERDCommenterToggle", { desc = "Toggle comment" })
     vim.keymap.set("v", "<leader>c", "<Plug>NERDCommenterToggle", { desc = "Toggle comment" })

    -- (Optional) other global settings:
    -- vim.g.NERDCommenterAlign = "left"
    -- vim.g.NERDTrimTrailingWhitespace = 1
  end,
}
