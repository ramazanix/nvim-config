return {
  "uloco/bluloco.nvim",
  lazy = false,
  priority = 1000,
  dependencies = { "rktjmp/lush.nvim" },
  config = function()
    local bluloco = require("bluloco")
    
    bluloco.setup({
      style = "dark",
      transparent = true,
      italics = false,
      terminal = vim.fn.has("gui_running") == 1,
      guicursor = true,
    })

    vim.cmd('colorscheme bluloco')
  end,
}

