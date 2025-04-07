return {
	"nvim-treesitter/nvim-treesitter",
	lazy = true,
	event = "BufReadPost",
	build = ":TSUpdate",
	opts = {
		sync_install = false,
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		indent = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
	},
}
