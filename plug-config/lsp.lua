-- LSP Config
-- Get lsp into path
-- Tell nvim to use the lspconfig

-- vim.g.lsp_signs_enabled = 1
-- vim.g.lsp_diagnostics_echo_cursor = 1
-- vim.g.lsp_signs_error = { text = '✗' }
-- vim.g.lsp_signs_warning = { text = '‼' }

-- vim.diagnostic.config({ virtual_text = true })
vim.o.updatetime = 50
vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

local signs = { Error = "🞫", Warn = "🛆 ", Hint = "💡", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach_lsp = function()
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
  vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { buffer = 0 })
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0 })
  vim.keymap.set('n', 'gr', vim.lsp.buf.rename, { buffer = 0 })
  vim.keymap.set('n', 'gf', vim.lsp.buf.code_action, { buffer = 0 })
  vim.keymap.set('n', '<leader>j', vim.diagnostics.goto_next, { buffer = 0 })
  vim.keymap.set('n', '<leader>k', vim.diagnostics.goto_prev, { buffer = 0 })
end

lspconfig.gopls.setup{
  capabilities = capabilities,
  on_attach = on_attach_lsp,
} -- Connect to Go server

lspconfig.tsserver.setup{
  capabilities = capabilities,
  on_attach = on_attach_lsp
} -- Connect to TypeScript server

lspconfig.hls.setup{
  capabilities = capabilities,
  on_attach = on_attach_lsp,
} -- Connect to Haskell server

lspconfig.clangd.setup{
  capabilities = capabilities,
  on_attach = on_attach_lsp,
} -- Connect to C/C++ server

lspconfig.lua_ls.setup{
  capabilities = capabilities,
  on_attach = on_attach_lsp,
} -- Connect to Lua server

lspconfig.tailwindcss.setup{
  capabilities = capabilities,
  on_attach = on_attach_lsp,
} -- Connect to TailwindCSS server

lspconfig.html.setup{
  capabilities = capabilities,
  on_attach = on_attach_lsp,
} -- Connect to HTML server

lspconfig.eslint.setup{
  capabilities = capabilities,
  on_attach = on_attach_lsp,
} -- Connect to ESLint server

lspconfig.jdtls.setup{
  capabilities = capabilities,
  on_attach = on_attach_lsp,
} -- Connect to Java server

lspconfig.csharp_ls.setup{
  capabilities = capabilities,
  on_attach = on_attach_lsp,
} -- Connect to C# server

lspconfig.omnisharp.setup{
  cmd = { "omnisharp"},
  capabilities = capabilities,
  on_attach = on_attach_lsp,
} -- Connect to OmniSharp server

-- Set up diagnostics.

vim.opt.completeopt = {"menu", "menuone", "noselect"} -- Setting vim values

-- Set up nvim-cmp.

local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
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
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
  }, {
      { name = 'buffer' },
    })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
  }, {
      { name = 'buffer' },
    })
})
