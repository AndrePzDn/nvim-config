local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.showcmd = true
opt.encoding = "utf-8"
opt.showmatch = true
opt.hidden = true
opt.termguicolors = true
opt.cursorline = true
opt.clipboard = "unnamedplus"
opt.textwidth = 80
opt.colorcolumn = "80"

vim.cmd("syntax enable")
vim.cmd("hi StartifyHeader guifg=#C678DD")

vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "🞫",
			[vim.diagnostic.severity.WARN] = "W",
			[vim.diagnostic.severity.INFO] = " ",
			[vim.diagnostic.severity.HINT] = "💡",
		},
	},
})

vim.diagnostic.config({ virtual_text = true })
