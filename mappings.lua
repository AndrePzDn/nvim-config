-- KeyBindings

-- Leader Key

vim.g.mapleader = ' '

-- Block Arrow Keys

vim.keymap.set('n', '<Up>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Down>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Left>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Right>', '<Nop>', { noremap = true })

-- Shortcuts as Visual Studio Code

vim.keymap.set('n', '<C-s>', ':w<CR>', {})
vim.keymap.set('i', '<C-s>', '<Esc><C-s>', {})
vim.keymap.set('v', '<C-s>', '<Esc><C-s>', {})

vim.keymap.set('n', '<C-z>', 'u', {})
vim.keymap.set('i', '<C-z>', '<Esc><C-z>', {})
vim.keymap.set('v', '<C-z>', '<Esc><C-z>', {})

-- vim.keymap.set('n', '<C-d>', '.', {})

-- Telescope mappings

vim.keymap.set('n', '<C-t>', ':Telescope find_files<CR>', {})
vim.keymap.set('i', '<C-t>', '<Esc><C-t>', {})
vim.keymap.set('v', '<C-t>', '<Esc><C-t>', {})

vim.keymap.set('n', '<C-f>', ':Telescope live_grep<CR>', {})
vim.keymap.set('i', '<C-f>', '<Esc><C-f>', {})
vim.keymap.set('v', '<C-f>', '<Esc><C-f>', {})

vim.keymap.set('n', '<C-b>', ':Telescope file_browser<CR><Esc>', {})
vim.keymap.set('i', '<C-b>', '<Esc><C-b>', {})
vim.keymap.set('v', '<C-b>', '<Esc><C-b>', {})

-- Tmux mappings

vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', {})
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', {})
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', {})
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', {})

-- Auto comment shortcut

vim.keymap.set('n', '<C-/>', ':AutoInlineComment<CR>', {
    noremap = true,
    silent = true
})
vim.keymap.set('i', '<C-/>', '<Esc>:AutoInlineComment<CR>', {
    noremap = true,
    silent = true
})
vim.keymap.set('v', '<C-/>', ':AutoInlineComment<CR>', {
    noremap = true,
    silent = true
})

-- Competitive Programming Shortcuts

vim.keymap.set('n', '<C-M-l>', ':CompetiTest run<CR>', {})
vim.keymap.set('n', '<C-M-k>', ':CompetiTest add_testcase<CR>', {})

-- GitHub Copilot Shortcuts

vim.keymap.set('n', '<leader>dc', ':Copilot disable<CR>', { silent = true })
vim.keymap.set('n', '<leader>ec', ':Copilot enable<CR>', { silent = true })
vim.keymap.set('i', '<C-k>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
})

vim.g.copilot_no_tab_map = true

-- Git Shortcuts

vim.keymap.set('n', '<leader>gg', ':Telescope git_status<CR><Esc>', { silent = true })

-- LSP Shortcuts

vim.keymap.set('n', '<leader>r', ':LspRestart<CR>', { noremap = true })

-- Formatting Shortcuts

vim.keymap.set('n', '<leader>cf', ':lua require("conform").format()<CR>', {
    noremap = true,
    silent = true
})

-- Debug Shortcuts - DAP

vim.keymap.set('n', '<F5>', ':lua require("dap").continue()<CR>', {
    silent = true
})
vim.keymap.set('n', '<F10>', ':lua require("dap").step_over()<CR>', {
    silent = true
})
vim.keymap.set('n', '<F11>', ':lua require("dap").step_into()<CR>', {
    silent = true
})
vim.keymap.set('n', '<F12>', ':lua require("dap").step_out()<CR>', {
    silent = true
})
vim.keymap.set('n', '<leader>b', ':lua require("dap").toggle_breakpoint()<CR>', {
    silent = true
})
vim.keymap.set('n', '<leader>B', ':lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', {
    silent = true
})
vim.keymap.set('n', '<leader>lp', ':lua require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', {
    silent = true
})
vim.keymap.set('n', '<leader>dr', ':lua require("dap").repl.open()<CR>', {
    silent = true
})

-- Tmux Navigator Shortcuts

vim.keymap.set('n', 'C-h', ':TmuxNavigateLeft<CR>')
vim.keymap.set('n', 'C-k', ':TmuxNavigateDown<CR>')
vim.keymap.set('n', 'C-j', ':TmuxNavigateUp<CR>')
vim.keymap.set('n', 'C-l', ':TmuxNavigateRight<CR>')
