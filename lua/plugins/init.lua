return {
	-- General
	-- { "jiangmiao/auto-pairs", lazy = true, event = "InsertEnter" },

	-- Themes
	{ "morhetz/gruvbox", lazy = true, event = "VeryLazy" },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = true,
		event = "VeryLazy",
	},

	-- Competitive programming
	-- { "MunifTanjim/nui.nvim" },
	-- { "xeluxee/competitest.nvim" },

	-- Git
	{ "lewis6991/gitsigns.nvim", opts = {}, lazy = true, event = "BufReadPost" },

	-- Snippets
	{ "L3MON4D3/LuaSnip", lazy = true, event = "InsertEnter" },
	{ "rafamadriz/friendly-snippets", lazy = true, event = "InsertEnter" },

	-- Mason
	-- { "williamboman/mason-lspconfig.nvim" },

	-- FZF
	{ "vijaymarupudi/nvim-fzf", lazy = true, event = "VeryLazy" },

	-- Copilot
	-- { "github/copilot.vim", lazy = true, event = "InsertEnter" },

	-- Tmux navigation
	{ "christoomey/vim-tmux-navigator", lazy = true, event = "VeryLazy" },

	-- Dotnet
	{ "Hoffs/omnisharp-extended-lsp.nvim", lazy = true, event = "VeryLazy" },
	{ "markwoodhall/vim-nuget", lazy = true, event = "VeryLazy" },
	{ "mattn/webapi-vim", lazy = true, event = "VeryLazy" },
	{ "Shougo/deoplete.nvim", lazy = true, event = "InsertEnter" },

	-- HTML / Tags
	{ "windwp/nvim-ts-autotag", lazy = true, event = "VeryLazy" },

	-- DB testing
	{ "tpope/vim-dadbod", lazy = true, event = "VeryLazy" },
	{ "kristijanhusak/vim-dadbod-ui", lazy = true, event = "VeryLazy" },
	{ "kristijanhusak/vim-dadbod-completion", lazy = true, event = "VeryLazy" },
	-- { "kndndrj/nvim-dbee", lazy = true, event = "VeryLazy" },
}
