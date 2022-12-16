# Tips on migrating from Vimscript to Lua

You can call Lua code from Vimscript with heredoc

```lua
lua <<EOF
print('hello from lua')
print('hello two')
EOF
```

If it's a single line you don't need the heredoc

```lua
lua print('hello single line')
```

## Scopes

- **vim.o:** general settings

```lua
vim.o.background = 'light'
```

- **vim.wo:** gets/sets window-scoped options

```lua
vim.wo.colorcolumn = '80'
```

- **vim.bo:** gets/sets buffer scoped options

```lua
vim.bo.filetype = 'lua'
```

- **vim.g:** gets/sets variables in the global scope

```lua
-- use space as a the leader key
vim.g.mapleader = ' '
```

- some variable names in vimscript are not valid in lua. We still have access
  to them but we can't use the dot notation. For example, plugin
  [vim-zoom](https://github.com/dhruvasagar/vim-zoom) has a variable called
  `zoom#statustext` and in vimscript we use it like this: `let
  g:zoom#statustext = 'Z'`. In Lua we have to access using _bracket syntax_:
  `vim.g['zoom#statustext'] = 'Z'`

- **vim.env:** gets/sets environment variables. Only applies to active Neovim session

```lua
vim.env.FZF_DEFAULT_OPTS = '--layout=reverse'
```

`vim.opt` are not direct values, but objects, so `print(vim.opt.textwidth)`
wouldn't print expected value, you'll have to use its getter function

```lua
print(vim.opt.textwidth:get())
```

- Use `vim.cmd` to call vimscript commands (or expressions) that don't have a
  lua equivalent.

```lua
vim.cmd('colorscheme rubber')
```

You can call `vim.cmd` with strings, but if you have to escape characters, as in

```lua
vim.cmd('%s/\\Vfoo/bar/g')
```

Is easier to use double bracket strings and avoid escaping characters

```lua
vim.cmd([[%s/\Vfoo/bar/g]])
```
