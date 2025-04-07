return {
	"neovim/nvim-lspconfig",
	lazy = true,
	event = "BufReadPre",
	config = function()
		vim.o.updatetime = 10

		vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

		require("luasnip.loaders.from_vscode").lazy_load()

		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local on_attach_lsp = function()
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
			vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
			vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
			vim.keymap.set("n", "<leader>f", vim.lsp.buf.code_action, { buffer = 0 })
			vim.keymap.set("n", "<leader>j", vim.diagnostic.goto_next, { buffer = 0 })
			vim.keymap.set("n", "<leader>k", vim.diagnostic.goto_prev, { buffer = 0 })
		end

		local lspServers = {
			"gopls",
			"ts_ls",
			"hls",
			"clangd",
			"lua_ls",
			"tailwindcss",
			"html",
			"eslint",
			"jdtls",
			"hyprls",
			"pylsp",
			"kotlin_language_server",
			--   'harper_ls', -- Grammatical error checker
		}

		for _, lsp in ipairs(lspServers) do
			lspconfig[lsp].setup({
				capabilities = capabilities,
				on_attach = on_attach_lsp,
			})
		end

		lspconfig.omnisharp.setup({
			cmd = { "omnisharp" },
			settings = {
				FormattingOptions = {
					EnableEditorConfigSupport = true,
					OrganizeImports = true,
				},
				MsBuild = {
					LoadProjectsOnDemand = nil,
				},
				RoslynExtensionsOptions = {
					EnableAnalyzersSupport = nil,
					EnableImportCompletion = nil,
					AnalyzeOpenDocumentsOnly = nil,
				},
				Sdk = {
					IncludePrereleases = nil,
				},
			},
			capabilities = capabilities,
			on_attach = function()
				vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
				vim.keymap.set("n", "gd", ':lua require("omnisharp_extended").lsp_definition()<CR>', { buffer = 0 })
				vim.keymap.set(
					"n",
					"gt",
					':lua require("omnisharp_extended").lsp_type_definition()<CR>',
					{ buffer = 0 }
				)
				vim.keymap.set("n", "gi", ':lua require("omnisharp_extended").lsp_implementation()<CR>', { buffer = 0 })
				vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
				vim.keymap.set("n", "<leader>f", vim.lsp.buf.code_action, { buffer = 0 })
				vim.keymap.set("n", "<leader>j", vim.diagnostic.goto_next, { buffer = 0 })
				vim.keymap.set("n", "<leader>k", vim.diagnostic.goto_prev, { buffer = 0 })
			end,
		}) -- Connect to C# server
	end,
}
