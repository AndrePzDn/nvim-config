return {
	{
		"saghen/blink.cmp",
		version = "v0.*",
		lazy = false,
		dependencies = { "rafamadriz/friendly-snippets", "L3MON4D3/LuaSnip" },
		opts = {
			sources = {
				default = {
					"lsp",
					"path",
					"snippets",
					"buffer",
					"copilot",
				},
				per_filetype = {
					sql = { "snippets", "dadbod", "buffer" },
				},
				providers = {
					copilot = {
						name = "copilot",
						module = "blink-cmp-copilot",
						score_offset = 100,
						async = true,
					},
					luasnip = {
						name = "snippets",
						module = "blink-cmp.sources.luasnip",
						score_offset = 1000,
					},
					dadbod = {
						name = "Dadbod",
						module = "vim_dadbod_completion.blink",
					},
				},
			},
			keymap = {
				preset = "none",
				["<Tab>"] = { "select_next", "fallback" },
				["<S-j>"] = { "select_next", "fallback" },
				["<S-Tab>"] = { "select_prev", "fallback" },
				["<S-k>"] = { "select_prev", "fallback" },

				["<C-k>"] = { "select_and_accept", "fallback" },
				["<CR>"] = { "select_and_accept", "fallback" },

				["<C-u>"] = { "scroll_documentation_up", "fallback" },
				["<C-d>"] = { "scroll_documentation_down", "fallback" },

				["<C-e>"] = { "hide", "fallback" },
				["<C-space>"] = { "show" },
				--[[ ["<C-space>"] = {
					function(cmp)
						cmp.show({ providers = { "copilot", "snippets", "lsp", "path", "buffer" } })
					end, 
				},]]
			},
			appearance = {
				nerd_font_variant = "CaskaydiaCove NF",
			},
			completion = {
				trigger = {
					show_on_insert_on_trigger_character = true,
				},
				documentation = {
					auto_show = true,
					window = {
						border = "rounded",
						winblend = 30,
					},
				},
				ghost_text = {
					enabled = true,
					show_without_selection = false,
				},
				list = {
					cycle = {
						from_bottom = true,
						from_top = true,
					},
				},
				menu = {
					auto_show = true,
					winblend = 10,
					border = "rounded",
					draw = {
						columns = {
							{ "label", "label_description", gap = 1, align = "left" },
							{ "kind_icon", width = 2, align = "right" },
							{ "kind" },
						},
					},
				},
			},
			signature = { enabled = true, window = { border = "rounded", winblend = 40 } },
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
	},
	{
		"giuxtaposition/blink-cmp-copilot",
	},
	{
		"zbirenbaum/copilot.lua",
		lazy = true,
		event = "InsertEnter",
		opts = {
			suggestion = { enabled = false },
			panel = { enabled = false },
		},
	},
}
