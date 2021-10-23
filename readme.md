# Neovim config

![screenshot](assets/screenshot.png)

## Features

 - linting and completion using LSP
 - syntax highlighting using TreeSitter
 - fuzzy finder using FZF
 - airline

## Installation

 - install Nerd font - https://github.com/ryanoasis/nerd-fonts
 - install packer.vim - https://github.com/wbthomason/packer.nvim
 - run `:PackerCompile` + `:PackerInstall`
 - TreeSitter update should happen automatically after the initial installation but you can trigger it with `:TSUpdate`

## Installing languages LSP

```
:LspInstall <language-name>
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
