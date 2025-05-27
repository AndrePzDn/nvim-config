return {
	"stevearc/conform.nvim",
	lazy = true,
	event = "BufWritePre",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				markdown = { "prettierd", "prettier", stop_after_first = true },
				html = { "prettierd", "prettier", stop_after_first = true },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescriptreact = { "prettierd", "prettier", stop_after_first = true },
				csharp = { "csharpier", stop_after_first = true },
				go = { "gofmt", stop_after_first = true },
				python = { "autoflake", stop_after_first = true },
				lua = { "stylua", stop_after_first = true },
				luau = { "stylua", stop_after_first = true },
			},
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true,
				stop_after_first = true,
			},
		})
	end,
}
