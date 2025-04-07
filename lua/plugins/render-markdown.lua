return {
	"MeanderingProgrammer/render-markdown.nvim",
	lazy = true,
	event = "VeryLazy",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		completions = {
			lsp = {
				enabled = true,
			},
		},
		code = {
			sign = false,
		},
	},
}
