-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	--Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- colorschemes

	use({ 'rose-pine/neovim', as = 'rose-pine' })
	use ("savq/melange-nvim")
	use('morhetz/gruvbox')
	use ("rebelot/kanagawa.nvim")


	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use('tpope/vim-commentary')

	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('jiangmiao/auto-pairs')
	use('tpope/vim-fugitive')
	use('tpope/vim-surround')
	use("ThePrimeagen/vim-be-good")
	use("mfussenegger/nvim-dap")
	use("haishanh/night-owl.vim")
	use('srcery-colors/srcery-vim')
	use("Rigellute/rigel")
	use("pineapplegiant/spaceduck")
	use("Alexis12119/nightly.nvim")
	vim.cmd("colorscheme kanagawa")

	use("42Paris/42header")

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	}
}
end)
