return {
  {
    "CRAG666/code_runner.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("code_runner").setup({
        filetype = {
          java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
        },
      })
    end,
  },
}
