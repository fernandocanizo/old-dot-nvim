# dot-nvim

This is my Neovim configuration, with a `packer` installer to bootstrap installation automatically on fresh cloning.

1. Export `XDG_CONFIG_HOME` shell environment variable so `nvim` knows where to
   find all it's configuration files, which are separated according to function.

2. Launch `nvim`

3. Inside Neovim run `:PackerInstall`

4. Install LSP servers with Mason
```
:Mason
```

5. Install COQ dependencies
```
:COQDeps
```

6. Install Treesitter grammars
```
:TSInstall some-grammar
```

Check [Treesitter supported languages](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages) to get the proper names.
