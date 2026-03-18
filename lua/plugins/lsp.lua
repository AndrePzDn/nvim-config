return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"saghen/blink.cmp",
		"seblj/roslyn.nvim",
	},
	opts = {
		servers = {
			gopls = {},
			ts_ls = {},
			hls = {},
			clangd = {},
			tailwindcss = {},
			html = {},
			eslint = {},
			jdtls = {},
			hyprls = {},
			-- pylsp = {},
			pyright = {},
		},
	},

	config = function(_, opts)
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(event)
				local bufnr = event.buf
				local keymap = vim.keymap.set
				local _opts = { buffer = bufnr, silent = true }

				keymap("n", "K", vim.lsp.buf.hover, _opts)
				keymap("n", "gd", vim.lsp.buf.definition, _opts)
				keymap("n", "gt", vim.lsp.buf.type_definition, _opts)
				keymap("n", "gi", vim.lsp.buf.implementation, _opts)
				keymap("n", "gr", vim.lsp.buf.rename, _opts)
				keymap("n", "<leader>f", vim.lsp.buf.code_action, _opts)

				keymap("n", "<leader>j", function()
					vim.diagnostic.jump({ count = 1, float = true })
				end, _opts)

				keymap("n", "<leader>k", function()
					vim.diagnostic.jump({ count = -1, float = true })
				end, _opts)
			end,
		})

		vim.lsp.config("lua_ls", {
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})

		vim.lsp.config("roslyn", {
			settings = {
				["csharp|inlay_hints"] = {
					csharp_enable_inlay_hints_for_implicit_object_creation = true,
					csharp_enable_inlay_hints_for_implicit_variable_types = true,
				},
				["csharp|code_lens"] = {
					dotnet_enable_references_code_lens = true,
				},
			},
		})

		for server, config in pairs(opts.servers) do
			config.capabilities = config.capabilities or capabilities
			vim.lsp.config(server, config)
			vim.lsp.enable(server)
		end

		vim.lsp.enable("lua_ls")
		vim.lsp.enable("roslyn")
	end,
}
