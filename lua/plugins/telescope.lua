 -- -- lua/plugins/telescope.lua
-- -- Telescope fuzzy-finder
-- return {
  -- "nvim-telescope/telescope.nvim",
  -- dependencies = { "nvim-lua/plenary.nvim" },
  -- config = function()
    -- local telescope = require("telescope")
    -- telescope.setup({
      -- defaults = {
        -- -- you can put any default config here (see `:h telescope.setup`)
        -- prompt_prefix = "🔍 ",
        -- mappings = {
          -- i = {
            -- ["<C-j>"] = require("telescope.actions").move_selection_next,
            -- ["<C-k>"] = require("telescope.actions").move_selection_previous,
          -- },
        -- },
      -- },
    -- })

    -- local opts = { noremap = true, silent = true }
    -- -- find files in cwd
    -- vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
    -- -- live grep
    -- vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
    -- -- list open buffers
    -- vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
    -- -- help tags
    -- vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
  -- end,
-- }





-- lua/plugins/telescope.lua
-- Telescope + file-browser (create files & dirs)
return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        prompt_prefix = "🔍 ",
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
          n = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
      },
      extensions = {
        file_browser = {
          theme = "dropdown",
          hijack_netrw = false,
          hidden = true,
          grouped = true,
          previewer = false,
          mappings = {
            i = {
              -- wrap create calls so they run inside the active picker
              ["<C-a>"] = function(prompt_bufnr)
                require("telescope").extensions.file_browser.actions.create(prompt_bufnr)
              end,
              ["<C-m>"] = function(prompt_bufnr)
                require("telescope").extensions.file_browser.actions.create_from_prompt(prompt_bufnr)
              end,
            },
            n = {
              ["a"] = function(prompt_bufnr)
                require("telescope").extensions.file_browser.actions.create(prompt_bufnr)
              end,
              ["m"] = function(prompt_bufnr)
                require("telescope").extensions.file_browser.actions.create_from_prompt(prompt_bufnr)
              end,
            },
          },
        },
      },
    })

    -- now that `setup` is done, load the file_browser extension
    telescope.load_extension("file_browser")

    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
    vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
    vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
    vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
    vim.keymap.set("n", "<leader>fe", function()
      require("telescope").extensions.file_browser.file_browser({
        path = vim.fn.expand("%:p:h"),
        cwd  = vim.loop.cwd(),
      })
    end, vim.tbl_extend("force", opts, { desc = "Browser files/folders" }))
  end,
}
