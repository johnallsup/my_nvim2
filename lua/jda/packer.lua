vim.keymap.set("n","\\pu", ":PackerUpdate<cr>")

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neoclide/vim-jsx-improve'
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
  use("folke/zen-mode.nvim")
  use("mbbill/undotree")
  use 'nvim-tree/nvim-web-devicons'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require("nvim-tree").setup {}
    end
  }
end)
