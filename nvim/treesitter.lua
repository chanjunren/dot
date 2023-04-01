local treesitter_installed, treesitter_configs = pcall(require, "nvim-treesitter.configs")
if not treesitter_installed then
	print "Error loading Treesitter :("
	return
end

treesitter_configs.setup {
	ensure_installed = "maintained", -- One of "all", "maintained" (parsers with maintainers), ora list of languages
	sync_install = false, -- Install languages synchronously (only applied to 'ensure_installed')
	highlight = {
		enable = true,
		disable = { "" }, -- list of languages that will disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
}
