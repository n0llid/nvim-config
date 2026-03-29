# n0llid's nvim-config

Personal Neovim configuration built from [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).
Modularized with [lazy.nvim](https://github.com/folke/lazy.nvim). Work in progress.

## Requirements

- Neovim (latest stable)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)
- [Nerd Font](https://www.nerdfonts.com/)
- `gcc`, `make`, `git`, `unzip`

## Installation

```bash
git clone https://github.com/n0llid/nvim-config.git ~/.config/nvim
nvim
```

Lazy.nvim will bootstrap and install all plugins on first launch.

## Structure

```
~/.config/nvim/
├── init.lua               # Entry point
└── lua/
    ├── vim-options.lua    # Options, keymaps, autocommands
    └── plugins/           # One file per plugin
```
