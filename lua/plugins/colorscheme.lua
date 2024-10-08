return {
  {
    "slugbyte/lackluster.nvim",

    lazy = false,
    priority = 1000,
    config = function()
      require("lackluster").setup({
        -- You can add any custom configuration here
      })

      vim.cmd.colorscheme("lackluster")
    end,
  },
  {

    "LazyVim/LazyVim",
    opts = {
      colorscheme = "lackluster",
    },
  },
}
