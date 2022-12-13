local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'https://github.com/wbthomason/packer.nvim'


  -- A better status line and in Lua
  -- better than: control, lightline, airline
  use 'https://github.com/nvim-lualine/lualine.nvim'
  -- these icons require a patched nerd font, which I'm not sure I have
  -- so I wanna test the basic plugin first, and later gonna make it nice
  -- use {
  -- 'https://github.com/nvim-lualine/lualine.nvim'
  -- requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  -- }


  -- mason: Portable package manager for Neovim that runs everywhere
  -- Neovim runs. Easily install and manage LSP servers, DAP servers,
  -- linters, and formatters.
  --
  -- mason.nvim is optimized to load as little as possible during setup.
  -- Lazy-loading the plugin, or somehow deferring the setup, is not
  -- recommended.
  use 'https://github.com/williamboman/mason.nvim'
  use 'https://github.com/williamboman/mason-lspconfig.nvim'
  use 'https://github.com/neovim/nvim-lspconfig'


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

