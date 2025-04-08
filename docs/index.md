# Setup

Inspired by <https://github.com/nvim-lua/kickstart.nvim>.

## Installation

1. Install Neovim>=0.11 (native LSP setup)
1. Install the external dependencies.
1. Clone this Git repository by replacing `<REPO>` with `<your_github_username>` in the commands below (Linux and Mac):

```sh
git clone https://github.com/<REPO>/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```
## Plugins

I use the plugin manager [**lazy.nvim**](https://github.com/folke/lazy.nvim) to install all plugins.

### Working on text and code

| Name | Purpose | Dependencies | Notes |
| ---- | ------- | ------------ | ----- |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim) |  |  |  |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) |  |  |  |
| [conform.nvim](https://github.com/stevearc/conform.nvim) |  |  |  |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) |  |  |  |
| [iron.nvim](https://github.com/Vigemus/iron.nvim) |  |  |  |

### Working with files and navigating between files

| Name | Purpose | Dependencies | Notes |
| ---- | ------- | ------------ | ----- |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) |  |  |  |
| [oil.nvim](https://github.com/stevearc/oil.nvim) |  |  |  |
| [harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2) |  |  |  |
| [tmux](https://github.com/tmux/tmux) |  |  |  |

### Git Integration

| Name | Purpose | Dependencies | Notes |
| ---- | ------- | ------------ | ----- |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) |  |  |  |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) |  |  |  |

### Miscellaneous

| Name | Purpose | Dependencies | Notes |
| ---- | ------- | ------------ | ----- |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) |  |  |  |
| [which-key.nvim](https://github.com/folke/which-key.nvim) |  |  |  |
| [mini.nvim](https://github.com/echasnovski/mini.nvim) |  |  |  |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) |  |  |  |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) |  |  |  |
| []() |  |  |  |

## Language Server Protocol, Debug Adapter Protocol, Linter and Formatter

The LSP (Language Server Protocol), DAP (Debug Adapter Protocol), Linter and Formatter will be installed by the package manager [Mason](https://github.com/williamboman/mason.nvim) (with dependencies: [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig), [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim), [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim), [mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)).


| Name | Language | Purpose | Notes |
| -----|----------|---------| ----- |
| [**pyright**](https://github.com/Microsoft/pyright) | Python | LSP | Need to install [Node.js](https://github.com/nodesource/distributions?tab=readme-ov-file#debian-and-ubuntu-based-distributions) because Pyright is written in Typescript. |
| [**ruff**](https://github.com/astral-sh/ruff) | Python | LSP, Linter and Formatter | Ruff LSP will be an alternative to pyright [soon](https://github.com/astral-sh/ruff/discussions/16455). |
| [**debugpy**](https://github.com/microsoft/debugpy) | Python | DAP | |
| [**lua_ls**](https://github.com/LuaLS/lua-language-server) | Lua | LSP | [lazydev.nvim](https://github.com/folke/lazydev.nvim) is a plugin that properly configures LuaLS. |
| [**stylua**](https://github.com/JohnnyMorganz/StyLua) | Lua | Formatter | |

