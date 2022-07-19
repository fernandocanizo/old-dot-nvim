"""""""""""""
" INDENTATION
"""""""""""""
" use SPACES when TAB is pressed
"set expandtab
"" number of spaces to show for a TAB
"set tabstop=2
"" number of spaces for indent (>>, endfunction
"set shiftwidth=2
"" number of spaces for a tab in editing operations
"set softtabstop=2
"" Insert `tabstop` number of spaces when the `tab` key is pressed
"set smarttab
"set smartindent
"" When shifting lines, round the indentation to the nearest multiple of
"" `shiftwidth`
"set shiftround
"" New lines inherit the indentation of previous lines
"set autoindent
"
"
"" 125 columns is good for git's pull request view
"" but I like to work with vsplits, hence this width
"set textwidth=75
"" highlight next column after textwidth (vertical red bar to show visually
"" when to stop writting or wrap manually some code)
"set colorcolumn=+1


" TODO it would be nice to have this when on a comment
" but it's not cool for code
"set nowrap
"set smartcase

" number lines
"set number

" do not scroll as I type, it's annoying
"set noincsearch

" don't wrap around file on searches
"set nowrapscan

" show xterm title
"set title

" place only a single space between sentences when joinging lines.
"set nojoinspaces

" allow me to switch to another buffer even if I haven't written my changes
"set hidden

" highlight current line
" Note: for some reason this doesn't work from here, but if you put it as
" ex command by hand, does work (WTF?!)
"hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
"map <F6> :set cursorline!<enter>:set cursorline?<enter>
"nnoremap <Leader>c :set cursorcolumn!<enter>:set cursorcolumn?<enter>
"set cursorline

" more intuitive way to put the new split
"set splitbelow
"set splitright

" highlight unwanted spaces:
" - no trailing spaces
" - no tab/spaces mixing
" - no empty lines with spaces
"highlight ExtraWhitespace ctermbg=red guibg=red
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\v\s+$|\s+\t+|\t+\s+|^\s+$/

" to set the proper color for colorscheme one
"set background=dark
"colorscheme elflord
"colorscheme molokai
"colorscheme vividchalk
"colorscheme moonfly
"colorscheme one
"colorscheme termschool

"hi CursorLine cterm=NONE ctermbg=darkgrey
" highlight current line the same way on any colorscheme
"autocmd ColorScheme * highlight StatusLine ctermbg=darkgrey cterm=NONE guibg=darkgrey gui=NONE

" jump to last position we were editing on this file
"autocmd BufReadPost * if line("'\"") | exe "'\"" | endif

" Open files completely unfolded
"au BufRead * normal zR

" Consider .svelte files as HTML
"au! BufNewFile,BufRead *.svelte set ft=html

" So vim-gutter (and other based on this setting) reports faster
" default is 4000 (4 seconds) which is too much
"set updatetime=100

" regexp: set very magic when doing global substitutions
"cnoremap %s/ %s/\v

" completeopt+=noselect disables tab completion, don't use it
"set completeopt+=menuone,noinsert

" automatically close preview window
"autocmd CompleteDone * if !pumvisible() | pclose | endif


