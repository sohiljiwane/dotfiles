# Dotfiles

Personal configuration files.

## Neovim Configuration

This Neovim configuration is modular and uses [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager.

### Structure

- `nvim/init.lua`: Entry point.
- `nvim/lua/sohil/core/`: Core settings and keymaps.
- `nvim/lua/sohil/plugins/`: Plugin configurations.
- `nvim/lua/sohil/plugins/lsp/`: LSP related configurations.

### Key Plugins

- **Package Management**: [lazy.nvim](https://github.com/folke/lazy.nvim)
- **LSP Support**: [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig), [mason.nvim](https://github.com/williamboman/mason.nvim)
- **Completion**: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- **File Explorer**: [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- **Fuzzy Finder**: [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- **Syntax Highlighting**: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- **Statusline**: [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- **Git Integration**: [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- **Formatting**: [conform.nvim](https://github.com/stevearc/conform.nvim)
- **Linting**: [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- **Others**: `alpha-nvim`, `auto-session`, `nvim-autopairs`, `bufferline.nvim`, `comment.nvim`, `todo-comments.nvim`, `trouble.nvim`, `which-key.nvim`, and more.

### Colorschemes

The configuration includes multiple colorschemes, with [TokyoNight](https://github.com/folke/tokyonight.nvim) (night style) as the default:

- `tokyonight` (Active)
- `catppuccin`
- `kanagawa`
- `onedark_dark`

### Prerequisites

- Neovim >= 0.12.0
- A [Nerd Font](https://www.nerdfonts.com/) for icons.
- `ripgrep` for Telescope.

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/dotfiles.git ~/dotfiles
   ```
2. Symlink the Neovim configuration:
   ```bash
   ln -s ~/dotfiles/nvim ~/.config/nvim
   ```
3. Open Neovim, and `lazy.nvim` will automatically install the plugins.
