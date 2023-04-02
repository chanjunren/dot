local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"htps://github.com/wbthomason/packer.nvim",
		install_path
	}
	print "Installing packer and restarting Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever plugins.lua is saved 
vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost packer.lua source <afile> | PackerSync
	augroup end
]]

-- Use a protected call so that an error is not thrown on first use 
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

return packer.startup(function(use)
	use "wbthomason/packer.nvim" -- Packer manages itself	
	use "nvim-lua/popup.nvim" -- Implementation of Popup API from vim in Neovim
	use "nvim-lua/plenary.nvim" -- Useful lua functions used by a lot of plugins
	use "numToStr/Comment.nvim" -- For commenting out stuff

	-- Miscellaneous
	use 'rose-pine/neovim'

	-- Telescope (Searching)
  use { 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' } }
	use 'nvim-telescope/telescope-media-files.nvim'

	-- Nvim-treesitter (Tree structure 
	use "kyazdani42/nvim-web-devicons"
	use "kyazdani42/nvim-tree.lua"

	-- Bufferline
	use "akinsho/bufferline.nvim"
	use "moll/vim-bbye"

	-- Treesitter (Syntax highlighting)
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"
	}
	use 'JoosepAlviste/nvim-ts-context-commentstring'

	-- Git
	use "lewis6991/gitsigns.nvim"

	-- Auto Completions
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'saadparwaiz1/cmp_luasnip'

	-- Snippets
	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets"

	-- LSP
	use {
		'neovim/nvim-lspconfig',
		requires = {
			-- Automatically install LSPs to stdpath for neovim
			{
				'williamboman/mason.nvim',
				run = ":MasonUpdate"
			},
			{
				'williamboman/mason-lspconfig.nvim',
			},
			-- Useful status updates for LSP
			-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
			{ 'j-hui/fidget.nvim', opts = {} },

			-- Additional lua configuration, makes nvim stuff amazing!
			'folke/neodev.nvim',
		}
	}

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
