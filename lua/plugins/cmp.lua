return {
	"hrsh7th/nvim-cmp",
	lazy = true,
	event = "InsertEnter",
	dependencies = {
		{ "hrsh7th/cmp-nvim-lsp", lazy = true, event = "InsertEnter" },
		{ "hrsh7th/cmp-buffer", lazy = true, event = "InsertEnter" },
		{ "hrsh7th/cmp-path", lazy = true, event = "InsertEnter" },
		{ "saadparwaiz1/cmp_luasnip", lazy = true, event = "InsertEnter" },
	},
	config = function()
		vim.opt.completeopt = { "menu", "menuone", "noselect" } -- Setting vim values

		local cmp = require("cmp")

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body) -- For luasnip users.
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					else
						fallback()
					end
				end, { "i", "s" }),
				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					else
						fallback()
					end
				end, { "i", "s" }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp_signature_help" },
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, -- For luasnip users.
				{ name = "render-markdown" }, -- For luasnip users.
			}, {
				{ name = "buffer" },
			}),
		})

		-- Set configuration for specific filetype.
		cmp.setup.filetype("gitcommit", {
			sources = cmp.config.sources({
				{ name = "git" },
			}, {
				{ name = "buffer" },
			}),
		})
	end,
}
