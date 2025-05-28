return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },
	lazy = true,
	event = "BufReadPre",
	opts = {
		servers = {
			lua_ls = {},
			gopls = {},
			ts_ls = {},
			hls = {},
			clangd = {},
			tailwindcss = {},
			html = {},
			eslint = {},
			jdtls = {},
			hyprls = {},
			pylsp = {},
			pyrigh = {},
		},
	},

	config = function(_, opts)
		local lspconfig = require("lspconfig")
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		local on_attach = function(_, bufnr)
			local keymap = vim.keymap.set
			local _opts = { buffer = bufnr, silent = true }

			keymap("n", "<leader>j", vim.diagnostic.goto_next, _opts)
			keymap("n", "<leader>k", vim.diagnostic.goto_prev, _opts)
		end

		for server, config in pairs(opts.servers) do
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities or capabilities)
			config.on_attach = on_attach
			lspconfig[server].setup(config)
		end
	end,
}
