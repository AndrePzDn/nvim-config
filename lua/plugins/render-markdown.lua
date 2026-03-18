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
		heading = {
			enabled = true,
			sign = true,
			style = "full",
			icons = { "① ", "② ", "③ ", "④ ", "⑤ ", "⑥ " },
			left_pad = 1,
		},
		bullet = {
			enabled = true,
			icons = { "●", "○", "◆", "◇" },
			right_pad = 1,
			highlight = "render-markdownBullet",
		},
	},
}
