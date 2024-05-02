local nr = { noremap = true }
vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", ":Ex<cr>", nr)
vim.keymap.set("i","jk","<esc>", nr) -- { noremap = true })
vim.keymap.set("v","<leader>pc", ":w<home>silent <end> !pc<cr>", nr )
vim.keymap.set("n","<leader>pp", ":r! pp<cr>", nr)
vim.keymap.set("n","<leader>pc",":silent :w !pc<cr>", nr)

local myl = "<leader>\\"
-- vim.keymap.set(myl..

function open_dir_of_current_buffer()
  local a = vim.api.nvim_buf_get_name(0)
  local d = a:match("(.*)/")
  vim.cmd("e "..d)
end
vim.keymap.set("n","\\o.",open_dir_of_current_buffer)


