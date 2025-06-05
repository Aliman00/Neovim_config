
--require("config.options")
--require("config.autocmds")
--require("config.plugins")
--require("config.nvimtree")

-- init.lua
-- load your core config
require("config.options")
require("config.autocmds")

-- now bootstrap & load plugins from lua/plugins/
require("plugins")
