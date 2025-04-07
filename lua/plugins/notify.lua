return {
	"rcarriga/nvim-notify",
	lazy = true,
	event = "VeryLazy",
	opts = {
		fps = 60,
		stages = "fade",
		background_colour = "#1C00FF00",
		icons = {
			ERROR = "🞫 ",
			WARN = "🛆 ",
			INFO = " ",
			DEBUG = " ",
			TRACE = "✎ ",
		},
	},
}
