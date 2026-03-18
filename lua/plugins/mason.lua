return {
	"mason-org/mason.nvim",
	lazy = true,
	event = "VeryLazy",
	config = function(_, opts)
		require("mason").setup({
			-- Should use the opts for icons
			registries = {
				"github:crashdummyy/mason-registry",
				"github:mason-org/mason-registry",
			},
			ui = {
				icons = {
					package_installed = "",
					package_uninstalled = "",
					package_pending = "",
				},
			},
		})
	end,
}
