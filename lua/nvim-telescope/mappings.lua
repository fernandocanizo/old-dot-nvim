-- Mappings for telescope

-- convenience renaming
local tb = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', tb.find_files, {})
vim.keymap.set('n', '<leader>ffg', tb.git_files, {})
vim.keymap.set('n', '<leader>fg', tb.live_grep, {})
vim.keymap.set('n', '<leader>fb', tb.buffers, {})
vim.keymap.set('n', '<leader>fh', tb.help_tags, {})
vim.keymap.set('n', '<leader>fc', tb.colorscheme, {})
vim.keymap.set('n', '<leader>fo', tb.vim_options, {})
vim.keymap.set('n', '<leader>fr', tb.registers, {})
vim.keymap.set('n', '<leader>fk', tb.keymaps, {})
