require("naovim.start")
require("config.lazy")
require("naovim.setup")
require("naovim.conf")

require('mini.snippets').setup({})
require('mini.completion').setup({})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
vim.lsp.enable({'rust_analyzer'})
