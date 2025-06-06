-- Leader key setup
-- This sets the leader key to space, which is commonly used for custom mappings
vim.g.mapleader = ' '

-- Enable mouse support
-- This allows you to use the mouse for scrolling, selecting text, etc.
vim.o.mouse = 'a'

-- Enable line wrapping
-- This is useful for reading long lines of text
vim.o.wrap = true

-- Enable syntax highlighting
-- This makes code and text more readable by coloring different elements
vim.o.syntax = 'on'

-- Line numbers and highlight
vim.o.number = true
vim.cmd('highlight LineNr guifg=#ff0000 guibg=#000000 gui=bold')

-- Set a very obvious colorscheme (if installed)
vim.cmd('colorscheme desert')
