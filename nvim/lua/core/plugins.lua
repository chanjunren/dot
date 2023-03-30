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
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
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

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
