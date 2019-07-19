colorscheme elflord

"""""""""""""
" INDENTATION
"""""""""""""
" use SPACES when TAB is pressed
set expandtab
" number of spaces to show for a TAB
set tabstop=2
" number of spaces for indent (>>, endfunction
set shiftwidth=2
" number of spaces for a tab in editing operations
set softtabstop=2
" Insert `tabstop` number of spaces when the `tab` key is pressed
set smarttab
set smartindent
" When shifting lines, round the indentation to the nearest multiple of
" `shiftwidth`
set shiftround
" New lines inherit the indentation of previous lines
set autoindent


" 125 columns is good for git's pull request view
" but I like to work with vsplits, hence this width
set textwidth=75
" highlight next column after textwidth
set colorcolumn=+1


" TODO it would be nice to have this when on a comment
" but it's not cool for code
set nowrap
set smartcase

" number lines
set number

" do not scroll as I type, it's annoying
set noincsearch

" don't wrap around file on searches
set nowrapscan

" show xterm title
set title

" show the cursor position all the time
"set ruler

" filename isModified isReadOnly isHelp isPreview
" fileformat
" filetype
" lines
" percentage
" current line
" current column
set statusline=%f%m%r%h%w\ ff=%{&ff}\ ft=%Y\ lines=%L\ %p%%\ LINE=%l\ COL=%v

" place only a single space between sentences when joinging lines.
set nojoinspaces

" allow me to switch to another buffer even if I haven't written my changes
set hidden

" highlight current line
set cursorline

" more intuitive way to put the new split
set splitbelow
set splitright

" by albertito@lugfi: hl in red spaces after text on EOL
highlight WhiteSpaceEOL ctermbg=red guibg=red
match WhiteSpaceEOL /\v\s+$/

" by luca@lugfi: hl in red spaces at the beginning
highlight SpaceError ctermbg=red
match SpaceError /\v^( +|\t +)\S*/
match SpaceError /\v\s+$/

" mark any tabs that are not at the beginning of the line as an error
match errorMsg /[^\t]\zs\t\+/

" jump to last position we were editing on this file
autocmd BufReadPost * if line("'\"") | exe "'\"" | endif

" Open files completely unfolded
au BufRead * normal zR

" So vim-gutter (and other based on this setting) reports faster
" default is 4000 (4 seconds) which is too much
set updatetime=100
