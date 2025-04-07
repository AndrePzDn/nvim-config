return {
	"norcalli/nvim-colorizer.lua",
	lazy = true,
	event = "BufReadPre",
	config = function()
		require("colorizer").setup()
	end,
}
