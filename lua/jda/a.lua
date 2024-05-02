function open_dir_of_current_buffer()
  local a = vim.api.nvim_buf_get_name(0)
  local d = a:match("(.*)/")
  vim.cmd("e "..d)
end
vim.keymap.set("n","\\o.",open_dir_of_current_buffer)
