local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Block Arrow Keys

map("n", "<Up>", "<Nop>", opts)
map("n", "<Down>", "<Nop>", opts)
map("n", "<Left>", "<Nop>", opts)
map("n", "<Right>", "<Nop>", opts)

map("i", "<C-c>", "<Esc>", opts)

map("n", "<C-d>", "10jzz", opts)
map("n", "<C-u>", "10kzz", opts)
map("v", "<C-u>", "10kzz", opts)
map("v", "<C-d>", "10jzz", opts)

-- Lazy

map("n", "<leader>l", ":Lazy<CR>", opts)

-- Shortcuts as Visual Studio Code

map("n", "<C-s>", ":lua SaveFile()<CR>", opts)
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

map("n", "<C-/>", "V<gc>", opts)
map("i", "<C-/>", "<Esc><C-/>", opts)

-- Competitive Programming Shortcuts

-- map("n", "<C-M-l>", ":CompetiTest run<CR>", {})
-- map("n", "<C-M-k>", ":CompetiTest add_testcase<CR>", {})

-- Git Shortcuts

map("n", "<leader>gg", ":Telescope git_status<CR><Esc>", opts)

-- LSP Shortcuts

map("n", "<leader>r", ":LspRestart<CR>", opts)

-- Formatting Shortcuts

map("n", "<M-S-f>", function()
	require("conform").format()
end, opts)

-- Tmux Navigator Shortcuts

map("n", "C-h", ":TmuxNavigateLeft<CR>", opts)
map("n", "C-k", ":TmuxNavigateDown<CR>", opts)
map("n", "C-j", ":TmuxNavigateUp<CR>", opts)
map("n", "C-l", ":TmuxNavigateRight<CR>", opts)

---- Functions -----

function SaveFile()
	if vim.fn.empty(vim.fn.expand("%:t")) == 1 then
		vim.notify("No file to save", vim.log.levels.WARN)
		return
	end

	local filename = vim.fn.expand("%:t")
	local success, err = pcall(function()
		vim.cmd("silent! write")
	end)

	if success then
		vim.notify(filename .. " Saved!")
	else
		vim.notify("Error: " .. err, vim.log.levels.ERROR)
	end
end
