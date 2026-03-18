return {
	"rcarriga/nvim-notify",
	lazy = true,
	event = "VeryLazy",
	config = function()
		require("notify").setup({
			level = vim.log.levels.INFO,
			timeout = 1500,
			stages = "fade_in_slide_out",
			fps = 60,
			background_colour = "#1C00FF00",
			icons = {
				ERROR = "🞫 ",
				WARN = "🛆 ",
				INFO = " ",
				DEBUG = " ",
				TRACE = "✎ ",
			},
		})
		vim.notify = require("notify")
	end,
}
