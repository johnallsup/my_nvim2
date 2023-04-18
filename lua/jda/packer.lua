-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope is for finding files
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- rose-pine is a colour theme
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  -- touble is: A pretty list for showing diagnostics,
  -- references, telescope results, quickfix and
  -- location lists to help you solve all the trouble
  -- your code is causing.
  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })


  -- basically letting you quickly jump between files
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")

  -- undotree
  use("mbbill/undotree")

  -- fugitive is a Git wrapper
  use("tpope/vim-fugitive")

  --  zen
  use("folke/zen-mode.nvim")


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

  use {
    "NvChad/nvterm",
    config = function ()
      require("nvterm").setup()
    end,
  }
end)


