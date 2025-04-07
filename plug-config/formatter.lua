local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    markdown = { "prettierd", "prettier", stop_after_first = true },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    csharp = { "csharpier", stop_after_first = true },
    go = { "gofmt", stop_after_first = true },
    python = { "isort", stop_after_first = true },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
    stop_after_first = true,
  }
})
