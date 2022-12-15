-- vim.api.nvim_set_keymap(mode, lhs, rhs, options_table)

local noremap = { noremap = true }

local function nmap(keyCombo, mapping)
  vim.api.nvim_set_keymap('n', keyCombo, mapping, noremap)
end

local function imap(keyCombo, mapping)
  vim.api.nvim_set_keymap('i', keyCombo, mapping, noremap)
end

-- buffer navigation
nmap('<c-h>', ':bprevious<enter>')
nmap('<c-l>', ':bnext<enter>')

-- scroll up/down one line keeping current position
nmap('<C-j>', '<C-e>j')
nmap('<C-k>', '<C-y>k')

-- highlight searches
nmap('/', ':set hls<enter>/\v')
nmap('?', ':set hls<enter>?\v')
nmap('#', ':set hls<enter>#\v')
nmap('*', ':set hls<enter>*\v')

-- toggle search highlighting
-- TODO bug "shortline is to long: nvso
--vim.api.nvim_set_keymap('nvso', '<F7>', ':set hls!<enter>:set hls?<enter>')

-- remap quit and macro recording
nmap('<Leader>q', 'q')
nmap('q', ':q<enter>')

-- tab fun
nmap('<Leader><Down>', ':tabnew<return>')
nmap('<Leader><Left>', ':tabnext<enter>')
nmap('<Leader><Right>', ':tabNext<enter>')
nmap('<Leader>o', ':tabonly<enter>')
nmap('<Leader><Up>', ':tabclose<enter>')

-- toggle cursorline
nmap('<F6>', ':set cursorline!<enter>:set cursorline?<enter>')

-- toggle search highlighting
nmap('<F7>', ':set hls!<enter>:set hls?<enter>')

-- shift+insert copies from XA_PRIMARY (mouse selection)
-- this mapping copies from XA_SECONDARY (clipboard)
-- equivalent to CTRL-V in other editors
imap('<c-V>', '"+gP')

-- don't loose your vertical split when closing a buffer
nmap('<C-c>', ':bp|bd #<enter>')
