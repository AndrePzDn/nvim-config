local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Block Arrow Keys

map("n", "<Up>", "<Nop>", opts)
map("n", "<Down>", "<Nop>", opts)
map("n", "<Left>", "<Nop>", opts)
map("n", "<Right>", "<Nop>", opts)

-- Shortcuts as Visual Studio Code

map("n", "<C-s>", ":w<CR>", opts)
map("i", "<C-s>", "<Esc><C-s>", opts)
map("v", "<C-s>", "<Esc><C-s>", opts)

map("n", "<C-z>", "u", opts)
map("i", "<C-z>", "<Esc><C-z>", opts)
map("v", "<C-z>", "<Esc><C-z>", opts)

-- map('n', '<C-d>', '.', opts)

-- Telescope mappings

map("n", "<C-t>", ":Telescope find_files<CR>", opts)
map("i", "<C-t>", "<Esc><C-t>", opts)
map("v", "<C-t>", "<Esc><C-t>", opts)

map("n", "<C-f>", ":Telescope live_grep<CR>", opts)
map("i", "<C-f>", "<Esc><C-f>", opts)
map("v", "<C-f>", "<Esc><C-f>", opts)

map("n", "<C-b>", ":Telescope file_browser<CR><Esc>", opts)
map("i", "<C-b>", "<Esc><C-b>", opts)
map("v", "<C-b>", "<Esc><C-b>", opts)

map("n", "<C-M-b>", ":Oil --float --preview<CR>", opts)
map("i", "<C-M-b>", "<Esc><C-M-b>", opts)
map("v", "<C-M-b>", "<Esc><C-M-b>", opts)

-- Tmux mappings

map("n", "<C-h>", ":wincmd h<CR>", opts)
map("n", "<C-j>", ":wincmd j<CR>", opts)
map("n", "<C-k>", ":wincmd k<CR>", opts)
map("n", "<C-l>", ":wincmd l<CR>", opts)

-- Auto comment shortcut

map("n", "<C-/>", ":AutoInlineComment<CR>", opts)
map("i", "<C-/>", "<Esc>:AutoInlineComment<CR>", opts)
map("v", "<C-/>", ":AutoInlineComment<CR>", opts)

-- Competitive Programming Shortcuts

-- map("n", "<C-M-l>", ":CompetiTest run<CR>", {})
-- map("n", "<C-M-k>", ":CompetiTest add_testcase<CR>", {})

-- GitHub Copilot Shortcuts

map("n", "<leader>dc", ":Copilot disable<CR>", opts)
map("n", "<leader>ec", ":Copilot enable<CR>", opts)
map("i", "<C-k>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
})

vim.g.copilot_no_tab_map = true

-- Git Shortcuts

map("n", "<leader>gg", ":Telescope git_status<CR><Esc>", opts)

-- LSP Shortcuts

map("n", "<leader>r", ":LspRestart<CR>", opts)

-- Formatting Shortcuts

map("n", "<leader>cf", ':lua require("conform").format()<CR>', opts)

-- Tmux Navigator Shortcuts

map("n", "C-h", ":TmuxNavigateLeft<CR>", opts)
map("n", "C-k", ":TmuxNavigateDown<CR>", opts)
map("n", "C-j", ":TmuxNavigateUp<CR>", opts)
map("n", "C-l", ":TmuxNavigateRight<CR>", opts)
