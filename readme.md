# Neovim config

## Requirements

 - Nerd font - https://github.com/ryanoasis/nerd-fonts
 - vim-plug - https://github.com/junegunn/vim-plug

## Initialize

```bash
$ nvim +PlugInstall
```

## Installing languages LSP

```
:LspInstall <language-name>
```

## Update treesitter grammars

```
:TSUpdate
```

## Keybindings

| Key               | Action                                  |
|-------------------|-----------------------------------------|
| `gd`              | Go to definition                        |
| `<space>f`        | Format file                             |
| `<space><space>`  | Find file                               |
| `<space>a`        | Fulltext search in files                |
| `<C-c><C-c>`      | :noh                                    |
| `<C-h>`           | Left window                             |
| `<C-l>`           | Right window                            |
| `<C-k>`           | Top window                              |
| `<C-j>`           | Bottom window                           |
| `gc`              | Delete buffer                           |
| `gn`              | Next buffer                             |
| `gN`              | Previous buffer                         |
| `gC`              | Delete all buffers but the selected one |

TODO

## TODO

 - formatting
