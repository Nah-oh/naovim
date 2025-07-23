require("naovim.start")
require("config.lazy")
require("naovim.setup")
require("naovim.conf")

require('mini.snippets').setup({})
require('mini.completion').setup({})
vim.lsp.enable({'rust_analyzer'})
