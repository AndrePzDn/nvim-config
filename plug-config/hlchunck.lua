require("hlchunk").setup({
  chunk = {
    enable = true,
    notify = false,
    use_treesitter = true,
    chars = {
      horizontal_line = "─",
      vertical_line = "│",
      left_top = "╭",
      left_bottom = "╰",
      right_arrow = ">",
    },
    style = {
      { fg = "#6c857c" },
      { fg = "#aa3c2f" }, -- this fg is used to highlight wrong chunk
    },
    max_file_size = 1024 * 1024,
    error_sign = true,
  },

  indent = {
    enable = true,
    use_treesitter = true,
    chars = {
      "│",
    },
    style = {
      { fg = "#444444" },
    },
  },

  line_num = {
    enable = false,
    use_treesitter = true,
    style = "#777777",
  },

  blank = {
    enable = true,
    chars = {
      "․",
    },
    style = {
      { fg = "#444444" },
    },
  },
})
