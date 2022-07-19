-- Indentation block
-- use spaces when TAB is pressed
vim.opt.expandtab = true
spaces = 2
-- number of spaces to show for a TAB character
vim.opt.tabstop = spaces
-- number of spaces for indent function (>>)
vim.opt.shiftwidth = spaces
-- number of spaces for a tab in editing operations
vim.opt.softtabstop = spaces
-- Insert `tabstop` number of spaces when the `tab` key is pressed
vim.opt.smarttab = true
vim.opt.smartindent = true
-- When shifting lines, round the indentation to the nearest
-- multiple of `shiftwidth`
vim.opt.shiftround = true
-- New lines inherit the indentation of previous lines
vim.opt.autoindent = true
-- Indentation block ends

-- Screen width
-- 125 columns is good for git's pull request view
-- but I like to work with vsplits, hence this width
vim.opt.textwidth = 65
-- highlight next column after textwidth (vertical red bar to
-- show visually when to stop writting or wrap manually some
-- code)
vim.opt.colorcolumn = +1

-- TODO it would be nice to have wrap on when on a comment and
-- off when on code
vim.opt.wrap = false

-- smartcase: used for the commands "/", "?", "n", "N", ":g" and ":s"
vim.opt.smartcase = true

-- number lines
vim.opt.number = true

-- not scroll as I type, it's annoying
vim.opt.incsearch = false

-- don't wrap around file on searches
vim.opt.wrapscan = false

-- show xterm title
vim.opt.title = true

-- place only a single space between sentences when joinging lines.
vim.opt.joinspaces = false

-- allow me to switch to another buffer even if I haven't written my changes
vim.opt.hidden = true

-- highlight current line
-- Note: for some reason this doesn't work from here, but if you put it as
-- ex command by hand, does work (WTF?!)
vim.cmd('hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white')
vim.cmd('hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white')
-- vim.api.nvim_set_keymap(mode, lhs, rhs, options_table)
vim.api.nvim_set_keymap('nvso', '<F6>' ':set cursorline!<enter>:set cursorline?<enter>')
vim.api.nvim_set_keymap('n', '<Leader>c', ':set cursorcolumn!<enter>:set cursorcolumn?<enter>', { nnoremap = true })
vim.opt.cursorline = true
-- highlight current line the same way on any colorscheme
vim.cmd('autocmd ColorScheme * highlight StatusLine ctermbg=darkgrey cterm=NONE guibg=darkgrey gui=NONE')


-- more intuitive way to put the new split
vim.opt.splitbelow = true
vim.opt.splitright = true

-- highlight unwanted spaces:
--   - no trailing spaces
--   - no tab/spaces mixing
--   - no empty lines with spaces
vim.cmd('highlight ExtraWhitespace ctermbg=red guibg=red')
vim.cmd('autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red')
vim.cmd('match ExtraWhitespace /\v\s+$|\s+\t+|\t+\s+|^\s+$/')

-- style
vim.opt.background = 'dark'
vim.cmd('colorscheme vividchalk')

-- to last position we were editing on this file
vim.cmd('autocmd BufReadPost * if line("'\"") | exe "'\"" | endif')

-- Open files completely unfolded
vim.cmd('au BufRead * normal zR')

-- Consider .svelte files as HTML
win.cdm('au! BufNewFile,BufRead *.svelte set ft=html')

-- So vim-gutter (and other based on this setting) reports faster
-- default is 4000 (4 seconds) which is too much
vim.opt.updatetime = 100

-- regexp: set very magic when doing global substitutions
vim.api.nvim_set_keymap('c', '%s/', '%s/\v', { noremap = true })

-- completeopt+=noselect disables tab completion, don't use it
vim.opt.completeopt.append('menuone', 'noinsert')

-- close preview window
vim.cmd('autocmd CompleteDone * if !pumvisible() | pclose | endif')
