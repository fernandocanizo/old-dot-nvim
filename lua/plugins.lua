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

  -- Completion
  use {'neoclide/coc.nvim', branch = 'release'}


  -- Fuzzy finder
  use {
    'https://github.com/nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = {
      { 'https://github.com/nvim-lua/plenary.nvim' },
      -- not required, but don't know how to put optional deps
      { 'https://github.com/nvim-telescope/telescope-fzy-native.nvim' },
      { 'https://github.com/nvim-tree/nvim-web-devicons' },
    }
  }

  -- Treesitter
  use {
    'https://github.com/nvim-treesitter/nvim-treesitter',
    -- this may produce an error on a fresh install. Read the
    -- docs or do a `:TSInstall` and then relaunch nvim
    run = ':TSUpdate'
  }

  use 'https://github.com/airblade/vim-gitgutter'


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

