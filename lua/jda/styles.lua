 -- change background depending on mode
 vim.api.nvim_create_autocmd({ "InsertEnter" }, {
	callback = function()
		vim.api.nvim_set_hl(0, "Normal", {bg="#330000"})
	end
})
    vim.api.nvim_create_autocmd({ "InsertLeave" }, {
	callback = function()
		vim.api.nvim_set_hl(0, "Normal", {bg="#000000"})
	end
})
