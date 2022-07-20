-- vim.api.nvim_set_keymap(mode, lhs, rhs, options_table)

-- explicitly set mapleader to \
vim.opt.mapleader = '\\'

-- new tab ctrl-t
vim.api.nvim_set_keymap('n', '<c-t>', '<esc>:tabnew<return>')

-- switch to left or right ctrl-h ctrl-l
vim.api.nvim_set_keymap('n', '<Leader>h', ':tabprevious<return>')
vim.api.nvim_set_keymap('n', '<Leader>l', ':tabnext<return>')

-- buffer navigation
vim.api.nvim_set_keymap('n', '<c-h>', ':bprevious<enter>')
vim.api.nvim_set_keymap('n', '<c-l>', ':bnext<enter>')

-- scroll up/down one line keeping current position
vim.api.nvim_set_keymap('nvso', '<C-j>', '<C-e>j')
vim.api.nvim_set_keymap('nvso', '<C-k>', '<C-y>k')

-- highlight searches
vim.api.nvim_set_keymap('n', '/', ':set hls<enter>/\v', { noremap = true })
vim.api.nvim_set_keymap('n', '?', ':set hls<enter>?\v', { noremap = true })
vim.api.nvim_set_keymap('n', '#', ':set hls<enter>#\v', { noremap = true })
vim.api.nvim_set_keymap('n', '*', ':set hls<enter>*\v', { noremap = true })

-- toggle search highlighting
vim.api.nvim_set_keymap('nvso', '<F7>', ':set hls!<enter>:set hls?<enter>')

-- remap quit and macro recording
vim.api.nvim_set_keymap('n', '<Leader>r', 'q', { noremap = true })
vim.api.nvim_set_keymap('n', 'q', ':q<enter>')


