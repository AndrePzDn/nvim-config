vim.notify = require("notify")
-- vim.notify = require("notify").setup({
--   background_colour = "#000000",
-- })
require("notify").setup({
  fps = 60,
  stages = "fade",
  background_colour = "#1C00ff00",
  icons = {
    ERROR = "❌ ",
    WARN = "⚠️ ",
    INFO = "ℹ️ ",
    DEBUG = "",
    TRACE = "✎",
  },
})
