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
  -- old mappings not yet converted to Lua
  vim.cmd 'source ~/.config/nvim/old-configs/mappings.vimrc'
end
