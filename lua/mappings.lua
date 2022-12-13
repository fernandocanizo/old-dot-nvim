-- vim.api.nvim_set_keymap(mode, lhs, rhs, options_table)

-- buffer navigation
vim.api.nvim_set_keymap('n', '<c-h>', ':bprevious<enter>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-l>', ':bnext<enter>', { noremap = true })

-- scroll up/down one line keeping current position
-- TODO bug "shortline is to long: nvso
-- maybe is an array?
--vim.api.nvim_set_keymap('nvso', '<C-j>', '<C-e>j', { noremap = true })
--vim.api.nvim_set_keymap('nvso', '<C-k>', '<C-y>k', { noremap = true })

-- highlight searches
vim.api.nvim_set_keymap('n', '/', ':set hls<enter>/\v', { noremap = true })
vim.api.nvim_set_keymap('n', '?', ':set hls<enter>?\v', { noremap = true })
vim.api.nvim_set_keymap('n', '#', ':set hls<enter>#\v', { noremap = true })
vim.api.nvim_set_keymap('n', '*', ':set hls<enter>*\v', { noremap = true })

-- toggle search highlighting
-- TODO bug "shortline is to long: nvso
--vim.api.nvim_set_keymap('nvso', '<F7>', ':set hls!<enter>:set hls?<enter>', { noremap = true })

-- remap quit and macro recording
vim.api.nvim_set_keymap('n', '<Leader>q', 'q', { noremap = true })
vim.api.nvim_set_keymap('n', 'q', ':q<enter>', { noremap = true })

-- tab fun
vim.api.nvim_set_keymap('n', '<Leader><Down>', ':tabnew<return>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader><Left>', ':tabnext<enter>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader><Right>', ':tabNext<enter>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>o', ':tabonly<enter>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader><Up>', ':tabclose<enter>', { noremap = true })
-- new tab ctrl-t

-- switch to left or right ctrl-h ctrl-l
--vim.api.nvim_set_keymap('n', '<Leader>h', ':tabprevious<return>')
--vim.api.nvim_set_keymap('n', '<Leader>l', ':tabnext<return>')


