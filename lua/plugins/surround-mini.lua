return {
	"echasnovski/mini.surround",
	version = "*",
	lazy = true,
	event = "BufEnter",
	opts = {
		mappings = {
			add = "gsa",
			delete = "gsd",
			find = "gsf",
			find_left = "gsf",
			highlight = "gsh",
			replace = "gsr",
			update_n_lines = "gsn",
		},
	},
}
