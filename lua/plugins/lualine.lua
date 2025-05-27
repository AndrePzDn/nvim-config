local colors = {
	blue = "#8aadf4",
	cyan = "#79dac8",
	black = "#24273a",
	white = "#cad3f5",
	red = "#ed8796",
	violet = "#c6a0f6",
	gray = "#303030",
	green = "#a6da95",
}

local bubbles_theme = {
	normal = {
		a = { fg = colors.green, bg = colors.gray, gui = "bold" },
		b = { fg = colors.white, bg = colors.gray },
		c = { fg = colors.white },
		z = { fg = colors.white, bg = colors.gray },
	},

	insert = { a = { fg = colors.blue, bg = colors.gray, gui = "bold" } },
	visual = { a = { fg = colors.violet, bg = colors.gray, gui = "bold" } },
	replace = { a = { fg = colors.red, bg = colors.gray, gui = "bold" } },

	inactive = {
		a = { fg = colors.white, bg = colors.black },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.white },
	},
}

return {
	"nvim-lualine/lualine.nvim",
	enabled = true,
	lazy = true,
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("lualine").setup({
			options = {
				theme = bubbles_theme,
				icons_enabled = true,
				component_separators = "|",
			},
			sections = {
				lualine_a = { { "mode", separator = { right = "|" } } },
				lualine_b = { "filename", "branch", "diff", "diagnostics" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = { "filetype", "fileformat" },
				lualine_z = { { "location", separator = { left = "|" } } },
			},
			inactive_sections = {
				lualine_a = { "filename", "diagnostics" },
				lualine_c = {},
				lualine_x = { "filetype" },
				lualine_z = { "location" },
			},
			tabline = {},
			extensions = {},
		})
	end,
}
