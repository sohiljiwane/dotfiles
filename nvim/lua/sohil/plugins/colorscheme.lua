return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      local bg = "#0d0d0d"
      local bg_dark = "#011423"
      local bg_highlight = "#143652"
      local bg_search = "#0A64AC"
      local bg_visual = "#275378"
      local fg = "#CBE0F0"
      local fg_dark = "#B4D0E9"
      local fg_gutter = "#627E97"
      local border = "#547998"

      require("tokyonight").setup({
        style = "night",
        on_colors = function(colors)
          colors.bg = bg
          colors.bg_dark = bg
          -- colors.bg_float = bg_dark
          -- colors.bg_highlight = bg_highlight
          colors.bg_popup = bg
          -- colors.bg_search = bg_search
          colors.bg_sidebar = bg
          colors.bg_statusline = bg
          -- colors.bg_visual = bg_visual
          -- colors.border = border
          -- colors.fg = fg
          -- colors.fg_dark = fg_dark
          -- colors.fg_float = fg
          -- colors.fg_gutter = fg_gutter
          colors.fg_sidebar = fg
        end,
      })
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = false,
      })
      -- load catppuccin as the active colorscheme
      -- vim.cmd([[colorscheme catppuccin]])
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        theme = "dragon", -- wave, dragon, or lotus
        background = {
          dark = "dragon",
        },
      })
      -- vim.cmd([[colorscheme kanagawa]])
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
      require("onedarkpro").setup({
        theme = "onedark_dark",
      })
      -- vim.cmd([[colorscheme onedark_dark]])
    end,
  },
}
