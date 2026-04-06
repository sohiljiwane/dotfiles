return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "json", "javascript", "typescript", "tsx", "yaml",
        "html", "css", "prisma", "markdown", "markdown_inline",
        "svelte", "graphql", "bash", "lua", "vim",
        "dockerfile", "gitignore", "query", "vimdoc", "c",
      },
    })

    -- highlight and indent are now native neovim features in v1.0
    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })

    -- autotag setup is now done directly on the plugin
    require("nvim-ts-autotag").setup()
  end,
}
