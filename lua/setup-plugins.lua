require('lualine').setup()

require('mason').setup({
  ui = {
    -- Whether to automatically check for new versions when opening the :Mason window.
    check_outdated_packages_on_open = true,

    -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
    border = 'double',

    icons = {
      -- The list icon to use for installed packages.
      package_installed = '✓',
      -- The list icon to use for packages that are installing, or queued for installation.
      package_pending = '➜',
      -- The list icon to use for packages that are not installed.
      package_uninstalled = '✗'
    },

    keymaps = {
      -- Keymap to expand a package
      toggle_package_expand = '<CR>',
      -- Keymap to install the package under the current cursor position
      install_package = 'i',
      -- Keymap to reinstall/update the package under the current cursor position
      update_package = 'u',
      -- Keymap to check for new version for the package under the current cursor position
      check_package_version = 'c',
      -- Keymap to update all installed packages
      update_all_packages = 'U',
      -- Keymap to check which installed packages are outdated
      check_outdated_packages = 'C',
      -- Keymap to uninstall a package
      uninstall_package = 'X',
      -- Keymap to cancel a package installation
      cancel_installation = '<C-c>',
      -- Keymap to apply language filter
      apply_language_filter = '<C-f>',
    },
  },
})

require('mason-lspconfig').setup()

-- Gonna try automatic LSP server setup via mason first
-- If you use this approach, make sure you don't also manually set up servers
-- directly via `lspconfig` as this will cause servers to be set up more than
-- once.

require('mason-lspconfig').setup_handlers {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.

  function (server_name) -- default handler (optional)
    require('lspconfig')[server_name].setup {}
  end,

  -- Next, you can provide a dedicated handler for specific servers.
  ['sumneko_lua'] = function ()
    require('lspconfig').sumneko_lua.setup {
      settings = {
        Lua = {
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { 'vim' }
          }
        }
      }
    }
  end,

}

require('nvim-treesitter.configs').setup {
  -- A list of parser names, or 'all'
  ensure_installed = {
    'javascript',
    'typescript',
    'lua',
    'html',
    'css',
    'json',
    'bash',
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for 'all')
  --ignore_install = { 'javascript' },

  -- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  --parser_install_dir = '/some/path/to/store/parsers', -- Remember to run vim.opt.runtimepath:append('/some/path/to/store/parsers')!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is the name of the parser)
    -- list of language that will be disabled
    --disable = { 'c', 'rust' },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true,
  }
}

