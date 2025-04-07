return {
	"shellRaining/hlchunk.nvim",
	lazy = true,
	event = "VeryLazy",
	opts = {
		chunk = {
			enable = true,
			notify = true,
			use_treesitter = true,
			chars = {
				right_arrow = "▸",
			},
			style = {
				{ fg = "#6E738D" },
				{ fg = "#ED8796" },
			},
			error_sign = true,
		},
		indent = {
			use_treesitter = true,
			enable = true,
		},
		line_num = {
			enable = true,
			style = {
				{ fg = "#8087A2" },
			},
		},
		blank = {
			enable = true,
			chars = {
				".",
			},
			style = {
				{ vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"), "" },
			},
		},
	},
}
