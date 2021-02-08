# dot-nvim
nvim configuration

1. Execute `install` script to get [Plug]()

2. Export `XDG_CONFIG_HOME` shell environment variable so `nvim` knows where to
   find all it's configuration files, which are separated according to function.

3. Inside neovim run `:PlugInstall`

## Kite: machine learning autocompletion

Get installer
```
yay -S kite # to get the installer
```

Install it to your user
```
/opt/kite/kite-installer install
```

Start it and start it automatically on next reboot
```
systemctl --user start kite-autostart
systemctl --user enable kite-autostart
```
