vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use { 'williamboman/mason.nvim', run = ':MasonUpdate' }
	use { 'williamboman/mason-lspconfig.nvim' }
	use { 'neovim/nvim-lspconfig' }

	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { "nvim-lua/plenary.nvim" }
	}

	use {
		"goolord/alpha-nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local alpha = require("alpha")
			local theme = require("alpha.themes.startify") 
			alpha.setup(theme.config)
		end,
	}

	use {
		"cocopon/iceberg.vim",
		config = function()
			vim.cmd("colorscheme iceberg")
		end
	}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

end)
