-- Set indent-blankline guide character
-- Note: tried to set this up on `setup-plugin.lua` file, but produced
-- errors
vim.g.indent_blankline_char = '┊'

-- start with disabled indent guides. They are pretty annoying
-- but gonna keep the plugin to be able to show them on deman
vim.g.indent_blankline_enabled = false

-- Toggle indent lines
vim.api.nvim_set_keymap('n', '<leader>i', ':IndentBlanklineToggle<enter>', { noremap = true })

