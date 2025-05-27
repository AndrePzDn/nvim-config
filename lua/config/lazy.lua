-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("mappings")
require("options")

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins.colorizer" },
		{ import = "plugins.comment" },
		{ import = "plugins.cmp" },
		{ import = "plugins.formatter" },
		{ import = "plugins.hlchunk" },
		{ import = "plugins.nvim-dev-icons" },
		{ import = "plugins.linter" },
		{ import = "plugins.lsp" },
		{ import = "plugins.lualine" },
		{ import = "plugins.mason" },
		{ import = "plugins.notify" },
		{ import = "plugins.startify" },
		{ import = "plugins.surround-mini" },
		{ import = "plugins.telescope" },
		{ import = "plugins.transparent" },
		{ import = "plugins.treesitter" },
		{ import = "plugins.trouble" },
		{ import = "plugins.toggleterm" },
		{ import = "plugins.oil" },
		{ import = "plugins" },
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "catpuccin-macchiato" } },
	-- automatically check for plugin updates
	checker = {
		enabled = true,
		notify = true,
	},
})

vim.cmd.colorscheme("catppuccin-macchiato")
