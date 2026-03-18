return {
	-- Themes
	{ "morhetz/gruvbox", lazy = true, event = "VeryLazy" },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true,
		event = "VeryLazy",
	},
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		lazy = true,
		config = function()
			require("kanagawa").setup({
				compile = false, -- enable compiling the colorscheme
				undercurl = true, -- enable undercurls
				commentStyle = { italic = true },
				functionStyle = {},
				keywordStyle = { italic = true },
				statementStyle = { bold = true },
				typeStyle = {},
				transparent = true, -- do not set background color
				dimInactive = false, -- dim inactive window `:h hl-NormalNC`
				terminalColors = true, -- define vim.g.terminal_color_{0,17}
				colors = { -- add/modify theme and palette colors
					palette = {},
					theme = {
						wave = {},
						lotus = {},
						dragon = {},
						all = {
							ui = {
								bg_gutter = "none", -- set bg color for normal background
								bg_sidebar = "none", -- set bg color for sidebar like nvim-tree
								bg_float = "none", -- set bg color for floating windows
							},
						},
					},
				},
				overrides = function(colors) -- add/modify highlights
					return {
						LineNr = { bg = "none" },
						NormalFloat = { bg = "none" },
						FloatBorder = { bg = "none" },
						FloatTitle = { bg = "none" },
						TelescopeNormal = { bg = "none" },
						TelescopeBorder = { bg = "none" },
						LspInfoBorder = { bg = "none" },
					}
				end,
				theme = "wave", -- Load "wave" theme
				background = { -- map the value of 'background' option to a theme
					dark = "wave", -- try "dragon" !
					light = "lotus",
				},
			})
		end,
	},

	-- Buffer Optimization
	{ "echasnovski/mini.bufremove", version = "*" },

	-- Competitive programming
	-- { "MunifTanjim/nui.nvim" },
	-- { "xeluxee/competitest.nvim" },

	-- Git
	{ "lewis6991/gitsigns.nvim", opts = {}, lazy = true, event = "BufReadPost" },

	-- Snippets
	{ "L3MON4D3/LuaSnip", lazy = true, event = "InsertEnter" },
	{ "rafamadriz/friendly-snippets", lazy = true, event = "InsertEnter" },

	-- FZF
	{ "vijaymarupudi/nvim-fzf", lazy = true, event = "VeryLazy" },

	-- Tmux navigation
	{ "christoomey/vim-tmux-navigator", lazy = true, event = "VeryLazy" },

	-- Dotnet
	-- { "Hoffs/omnisharp-extended-lsp.nvim", lazy = true, event = "VeryLazy" },

	-- DB testing
	{ "tpope/vim-dadbod", lazy = true, event = "VeryLazy" },
	{ "kristijanhusak/vim-dadbod-ui", lazy = true, event = "VeryLazy" },
	{ "kristijanhusak/vim-dadbod-completion", lazy = true, event = "VeryLazy" },
	{ "karb94/neoscroll.nvim", opts = {} },
}
