-- Convenience renaming just for clarity
local set = vim.opt
local setWindowOption = vim.wo
local setGlobal = vim.g
local vimscript = vim.cmd

-- use space as a the leader key
setGlobal.mapleader = ' '


-- Indentation block
-- use spaces when TAB is pressed
set.expandtab = true
local spaces = 2
-- number of spaces to show for a TAB character
set.tabstop = spaces
-- number of spaces for indent function (>>)
set.shiftwidth = spaces
-- number of spaces for a tab in editing operations
set.softtabstop = spaces
-- Insert `tabstop` number of spaces when the `tab` key is pressed
set.smarttab = true
set.smartindent = true
-- When shifting lines, round the indentation to the nearest
-- multiple of `shiftwidth`
set.shiftround = true
-- New lines inherit the indentation of previous lines
set.autoindent = true
-- Indentation block ends


-- Screen width
-- 125 columns is good for git's pull request view
-- but I like to work with vsplits, hence this width
set.textwidth = 65

-- highlight next column after textwidth (vertical red bar to
-- show visually when to stop writting or wrap manually some
-- code)
-- TODO originally this was `colorcolumn =+1` to put the
-- highlighted column after textwidth. However: 
-- '+' gives error,
-- fixed number doesn't get set,
-- and `vim.wo.colorcolumn = vim.opt.textwidth + 1` gives
-- "invalid value for option"
-- `vim.wo.colorcolumn = vim.opt.textwidth.get()`
-- `setWindowOption.colorcolumn:append(1)` gives
-- attempt to call method 'append' (a nil value)
--setWindowOption.colorcolumn:append(1)
-- So I'm using VimScript
vimscript [[
  set colorcolumn=+1
]]

-- TODO it would be nice to have wrap on when on a comment and
-- off when on code
set.wrap = false

-- smartcase: used for the commands "/", "?", "n", "N", ":g" and ":s"
set.smartcase = true

-- number lines
set.number = true

-- not scroll as I type, it's annoying
set.incsearch = false

-- don't wrap around file on searches
set.wrapscan = false

-- show xterm title
set.title = true

-- place only a single space between sentences when joinging lines.
set.joinspaces = false

-- allow me to switch to another buffer even if I haven't written my changes
set.hidden = true

-- highlight current line
vim.cmd('hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white')
set.cursorline = true

-- more intuitive way to put the new split
set.splitbelow = true
set.splitright = true

-- highlight unwanted spaces:
--   - no trailing spaces
--   - no tab/spaces mixing
--   - no empty lines with spaces
vim.cmd('highlight ExtraWhitespace ctermbg=red guibg=red')
vim.cmd('autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red')
vim.cmd([[match ExtraWhitespace /\v\s+$|\s+\t+|\t+\s+|^\s+$/]])

-- to last position we were editing on this file
vim.cmd([[autocmd BufReadPost * if line("'\"") | exe "'\"" | endif]])

-- Open files completely unfolded
vim.cmd('au BufRead * normal zR')

-- So vim-gutter (and other based on this setting) reports faster
-- default is 4000 (4 seconds) which is too much
set.updatetime = 100

-- TODO not working
-- regexp: set very magic when doing global substitutions
vim.api.nvim_set_keymap('c', '%s/', '%s/\v', { noremap = true })

-- completeopt+=noselect disables tab completion, don't use it
-- TODO fix next line, buggy
--vim.opt.completeopt.append('menuone', 'noinsert')

-- close preview window
vim.cmd('autocmd CompleteDone * if !pumvisible() | pclose | endif')

-- always show tabline
set.showtabline = 2

set.pastetoggle = '<F5>'
