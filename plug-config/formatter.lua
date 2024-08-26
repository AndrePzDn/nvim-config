local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        markdown = { { "prettierd", "prettier" } },
        javascript = { { "prettierd", "prettier" } },
        csharp = { { "csharpier" } },
        go = { { "gofmt" } },
    },
})
