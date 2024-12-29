return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    
    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      ensure_installed = {
        "lua",
        "bash",
        "json",
        "cmake",
        "comment",
        "css",
        "dockerfile",
        "gitignore",
        "markdown",
        "markdown_inline",
        "prisma",
        "python",
        "scss",
        "styled",
        "typescript",
        "tsx",
        "javascript",
        "svelte",
        "vim",
        "vimdoc",
        "query",
        "yaml",
        "html",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
