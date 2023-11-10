require('gitsigns').setup()

local gs = require 'gitsigns'
vim.keymap.set('n', '<leader>tb', gs.toggle_current_line_blame)
