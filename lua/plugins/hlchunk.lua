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
			exclude_filetypes = { "oil" }, -- oil still excluded
			-- automatically disable for filetypes without a valid Treesitter parser
			should_render = function(bufnr)
				local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")
				local ok, _ = pcall(vim.treesitter.get_parser, bufnr, ft)
				return ok
			end,
		},
		line_num = {
			enable = true,
			style = {
				{ fg = "#8087A2" },
			},
		},
		blank = {
			enable = true,
			chars = { "." },
			style = {
				{ vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"), "" },
			},
		},
	},
}
