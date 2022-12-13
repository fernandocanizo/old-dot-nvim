-- determine if neovim is running in vscode
if vim.g.vscode then
  -- running as VSCode extension
else
  -- normal neovim
  require('plugins')
  require('setup-plugins')
  require('general')
  
  vim.cmd 'source ~/.config/nvim/old-configs/mappings.vimrc'
  --require('test')
end
