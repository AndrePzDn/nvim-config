return {
	"nvim-telescope/telescope.nvim",
	lazy = true,
	event = "VeryLazy",
	version = "0.1.5",
	dependencies = {
		{ "nvim-lua/plenary.nvim", lazy = true },
		{ "nvim-lua/popup.nvim", lazy = true },
		{ "nvim-telescope/telescope-media-files.nvim", lazy = true, event = "VeryLazy" },
		{ "nvim-telescope/telescope-file-browser.nvim", lazy = true, event = "VeryLazy" },
	},
	config = function()
		local fb_actions = require("telescope").extensions.file_browser.actions
		local t_actions = require("telescope.actions")

		fb_actions.goto_cwd = function(prompt_bufnr)
			local dir = require("telescope.actions.state").get_selected_entry(prompt_bufnr)
			require("telescope.actions").close(prompt_bufnr)
			require("telescope.builtin").file_browser({ cwd = dir.path })
		end

		require("telescope").setup({
			defaults = {
				vimgrep_arguments = {
					"rg",
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case",
				},
				multi_icon = "+ ",
				--     sorting_strategy = 'descending',
				sorting_strategy = "ascending",
				selection_strategy = "follow",
				file_ignore_patterns = { "node_modules", ".git" },
				preview = {
					"treesitter",
					mime_hook = function(filepath, bufnr, opts)
						local is_image = function(filepath)
							local image_extensions = { "png", "jpg", "jpeg", "webp" }
							local split_path = vim.split(filepath:lower(), ".", { plain = true })
							local extension = split_path[#split_path]
							return vim.tbl_contains(image_extensions, extension)
						end
						if is_image(filepath) then
							local term = vim.api.nvim_open_term(bufnr, {})
							local function send_output(_, data, _)
								for _, d in ipairs(data) do
									vim.api.nvim_chan_send(term, d .. "\r\n")
								end
							end
							vim.fn.jobstart({
								"kitten",
								"icat",
								"--transfer_mode",
								"stream",
								filepath,
							}, { on_stdout = send_output, stdout_buffered = true, pty = true })
						else
							require("telescope.previewers.utils").set_preview_message(
								bufnr,
								opts.winid,
								"Binary cannot be previewed"
							)
						end
					end,
				},
				mappings = {
					n = {
						["o"] = t_actions.select_default,
						["<C-c>"] = t_actions.close,
					},
				},
			},
			extensions = {
				media_files = {
					filetypes = { "png", "webp", "jpg", "jpeg" },
					find_cmd = "rg", -- find command (defaults to fd)
				},
				file_browser = {
					hijack_netrw = true,
					mappings = {
						["n"] = {
							["a"] = fb_actions.create,
							["<C-b>"] = t_actions.close,
							["<C-z>"] = fb_actions.goto_parent_dir,
							["<S-i>"] = fb_actions.toggle_hidden,
							["<S-c>"] = fb_actions.change_cwd,
						},
					},
				},
			},
		})

		require("telescope.themes")
		require("telescope").load_extension("media_files")
		require("telescope").load_extension("file_browser")
	end,
}
