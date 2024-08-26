local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        markdown = { { "prettierd", "prettier" } },
        javascript = { { "prettierd", "prettier" } },
        csharp = { { "csharpier" } },
        go = { { "gofmt" } },
    },
})

vim.keymap.set('n', '<leader>cf', ':lua require("conform").format()<CR>',
    { noremap = true, silent = true }
)
