return {
	"williamboman/mason.nvim",
	lazy = true,
	event = "VeryLazy",
	opts = {
		ui = {
			icons = {
				package_installed = "",
				package_uninstalled = "",
				package_pending = "",
			},
		},
	},
}
