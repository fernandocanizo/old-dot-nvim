-- Configuration for https://github.com/itchyny/lightline.vim

-- always show status line
vim.opt.laststatus = 2

-- don't show the 'INSERT' in insert mode. Mode is already shown
vim.opt.showmode = false
vim.g.lightline = [[
  'colorscheme': 'wombat',
  'active': {
    'left': [
      [ 'mode', 'paste' ],
      [ 'readonly', 'filename', 'modified', 'gitbranch' ]
    ]
  },
}]]

