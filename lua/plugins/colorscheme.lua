return {
  {
    "slugbyte/lackluster.nvim",

    lazy = false,
    priority = 1000,
    config = function()
      require("lackluster").setup({})

      vim.cmd.colorscheme("lackluster")
    end,
  },
  {
    "sho-87/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {

    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-paper",
    },
  },
}
