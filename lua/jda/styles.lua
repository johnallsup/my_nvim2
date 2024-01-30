local function MyInsertEnter()
  vim.api.nvim_set_hl(0, "Normal", {bg="#330000"})
  vim.api.nvim_set_hl(0, "LineNr", {bg="#770000"})
  vim.api.nvim_set_hl(0, "CursorLineNr", {bg="#ff0000",fg="white"})
end
local function MyInsertLeave()
  vim.api.nvim_set_hl(0, "Normal", {bg="#000000"})
  vim.api.nvim_set_hl(0, "LineNr", {bg="#000077"})
  vim.api.nvim_set_hl(0, "CursorLineNr", {bg="#000033",fg="yellow"})
end
vim.api.nvim_create_autocmd({ "InsertEnter" }, {
    callback = MyInsertEnter
})
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    callback = MyInsertLeave
})
MyInsertLeave()
