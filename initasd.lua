local opt = vim.opt
local g = vim.g

opt.mouse = ""
opt.clipboard = "unnamedplus"
opt.termguicolors = true
opt.number = true
opt.rnu = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.showcmd = true
opt.encoding = "utf-8"
opt.showmatch = true
opt.hidden = true
opt.cursorline = true
opt.textwidth = 80
opt.colorcolumn = "80"
opt.syntax = "enable"

-- Sources files in the current directory

g.mapleader = " "

-- Set colorscheme

opt.background = "dark"
vim.cmd("colorscheme gruvbox")
