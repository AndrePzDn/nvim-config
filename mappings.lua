-- KeyBindings

-- Leader Key

vim.g.mapleader = ' '

-- Block Arrow Keys

vim.keymap.set('n', '<Up>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Down>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Left>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Right>', '<Nop>', { noremap = true })

-- Shortcuts as VSC

vim.keymap.set('n', '<C-s>', ':w<CR>', {})
vim.keymap.set('i', '<C-s>', '<Esc><C-s>', {})
vim.keymap.set('v', '<C-s>', '<Esc><C-s>', {})

vim.keymap.set('n', '<C-z>', 'u', {})
vim.keymap.set('i', '<C-z>', '<Esc><C-z>', {})
vim.keymap.set('v', '<C-z>', '<Esc><C-z>', {})

vim.keymap.set('n', '<C-d>', '.', {})

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

-- Autocomment shortcut

vim.keymap.set('n', '<C-/>', ':AutoInlineComment<CR>', {
  noremap = true
})
vim.keymap.set('i', '<C-/>', '<Esc>:AutoInlineComment<CR>', {
  noremap = true
})
vim.keymap.set('v', '<C-/>', ':AutoInlineComment<CR>', { noremap = true })

-- Competitive Programming Shortcuts

vim.keymap.set('n', '<C-M-l>', ':CompiTest run_no_compile<CR>', {})
vim.keymap.set('n', '<C-M-k>', ':CompiTest add_testcase<CR>', {})

-- GitHub Copilot Shortcuts

vim.keymap.set('i', '<C-k>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})

vim.g.copilot_no_tab_map = true


-- Leader Mappings

vim.keymap.set('n', '<leader>r', ':LspRestart<CR>', {noremap = true})
