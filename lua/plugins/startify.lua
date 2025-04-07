return {
	"mhinz/vim-startify",
	lazy = true,
	event = "VimEnter",
	config = function()
		vim.g.startify_lists = {
			{ type = "bookmarks", header = { "   Shortcuts" } },
			{ type = "sessions", header = { "   Sessions" } },
			{ type = "commands", header = { "   Commands" } },
		}

		vim.g.startify_entry_format = 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'

		vim.g.startify_bookmarks = vim.fn.systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")

		vim.api.nvim_create_autocmd("User", {
			pattern = "Startified",
			callback = function()
				vim.keymap.set("n", "o", "<Plug>(startify-open-buffers)", { buffer = true })
			end,
		})

		vim.g.startify_custom_header = vim.fn["startify#center"]({
			"",
			"",
			"",
			" █████╗ ███╗   ██╗██████╗ ██████╗ ███████╗██████╗ ███████╗██████╗ ███╗   ██╗",
			"██╔══██╗████╗  ██║██╔══██╗██╔══██╗██╔════╝██╔══██╗╚══███╔╝██╔══██╗████╗  ██║",
			"███████║██╔██╗ ██║██║  ██║██████╔╝█████╗  ██████╔╝  ███╔╝ ██║  ██║██╔██╗ ██║",
			"██╔══██║██║╚██╗██║██║  ██║██╔══██╗██╔══╝  ██╔═══╝  ███╔╝  ██║  ██║██║╚██╗██║",
			"██║  ██║██║ ╚████║██████╔╝██║  ██║███████╗██║     ███████╗██████╔╝██║ ╚████║",
			"╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝     ╚══════╝╚═════╝ ╚═╝  ╚═══╝",
			"",
			"",
			"",
		})
	end,
}
