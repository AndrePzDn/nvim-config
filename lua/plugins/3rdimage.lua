return {
	"3rd/image.nvim",
	build = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("image").setup({
			backends = {
				"kitty",
				"ueberzug",
				"chafa",
				"viu",
				"wezterm",
			},
			integrations = {
				markdown = {
					enabled = true,
					clear_in_insert_mode = false,
					download_remote_images = true,
					only_render_image_at_cursor = false,
					only_render_image_at_cursor_mode = "popup", -- or "inline"
					floating_windows = false, -- if true, images will be rendered in floating markdown windows
					filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
				},
				neorg = {
					enabled = true,
					filetypes = { "norg" },
				},
				typst = {
					enabled = true,
					filetypes = { "typst" },
				},
				html = {
					enabled = false,
				},
				css = {
					enabled = false,
				},
			},
			render = {
				min_padding = 5,
				show_label = true,
				use_dither = true,
				foreground_color = false,
				background_color = true,
			},
			events = {
				update_on_nvim_resize = true,
			},
			window = {
				border = "rounded",
				transparency = 20,
			},
		})
	end,
}
