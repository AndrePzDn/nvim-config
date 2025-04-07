return {
	"nvim-tree/nvim-web-devicons",
	lazy = true,
	event = "VeryLazy",
	config = function()
		require("nvim-web-devicons").setup({
			override = {
				[".env"] = {
					icon = "",
					color = "#F9A959",
					name = "Env",
				},
				[".env.local"] = {
					icon = "",
					color = "#F9A959",
					name = "EnvLocal",
				},
			},
			default = true,
		})
	end,
}
