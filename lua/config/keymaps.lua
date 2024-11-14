-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Toggle comments with Shift+Ctrl+Right Arrow
map("n", "<S-C-Right>", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "Toggle comment" })

map(
  "v",
  "<S-C-Right>",
  "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
  { desc = "Toggle comment" }
)
map("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = true })
