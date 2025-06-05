-- lua/plugins/nvim-tree.lua
return {
  "nvim-tree/nvim-tree.lua",
  -- move your old `config.nvimtree` setup here:
  config = function()
    require("nvim-tree").setup({
      view = {
	width = 30,
	side = "left",
      },
    })
  end,
}
