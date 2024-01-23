vim.api.nvim_create_autocmd({ "InsertEnter" }, {
    callback = function()
        vim.api.nvim_set_hl(0, "Normal", {bg="#330000"})
        vim.api.nvim_set_hl(0, "LineNr", {bg="#770000"})
    end
})
    vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    callback = function()
        vim.api.nvim_set_hl(0, "Normal", {bg="#000000"})
        vim.api.nvim_set_hl(0, "LineNr", {bg="#000077"})
    end
})
