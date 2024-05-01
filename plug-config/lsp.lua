-- vim.diagnostic.config({ virtual_text = true })

vim.o.updatetime = 50
vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

local signs = { Error = '🞫', Warn = '🛆 ', Hint = '💡', Info = ' ' }

for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
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
  vim.keymap.set('n', '<leader>j', vim.diagnostic.goto_next, { buffer = 0 })
  vim.keymap.set('n', '<leader>k', vim.diagnostic.goto_prev, { buffer = 0 })
end

local lspServers = {
  'gopls',
  'tsserver',
  'hls',
  'clangd',
  'lua_ls',
  'tailwindcss',
  'html',
  'eslint',
  'jdtls',
}

for _, lsp in ipairs(lspServers) do
  lspconfig[lsp].setup{
    capabilities = capabilities,
    on_attach = on_attach_lsp,
  }
end

lspconfig.omnisharp.setup{
  cmd = {'OmniSharp'},
  settings = {
    FormattingOptions = {
      EnableEditorConfigSupport = true,
      OrganizeImports = nil,
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
      IncludePrereleases = true,
    },
  },
  capabilities = capabilities,
  on_attach = on_attach_lsp,
} -- Connect to C# server
