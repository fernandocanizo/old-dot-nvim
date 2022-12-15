-- determine if neovim is running in vscode
if vim.g.vscode then
  -- running as VSCode extension
else
  -- normal neovim

  require('pre-plugins')
  require('plugins')
  require('setup-plugins')

  require('style')
  require('general')

  require('mappings')

  -- Plugin specific settings and mappings
  require('lua.coc')
  require('telescope-mappings')
end
