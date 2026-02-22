
-- LSP Mason tools installation. Make sure to install
-- the right tools beforehand.
require('mason-tool-installer').setup({
    ensure_installed = {
        -- LSPs
        'pyright',

        -- Formatters
        'black',
        -- Linters
        -- DAPs
    },
})

-- LSP configuration
vim.lsp.config('luals', {
  cmd = {'lua-language-server'},
  filetypes = {'lua'},
  root_markers = {'.luarc.json', '.luarc.jsonc'},
})

-- LSP configuration
vim.lsp.enable('luals')
vim.lsp.enable('pyright')
vim.lsp.enable('nil')

-- Formatters setup on save
require("conform").setup({
  formatters_by_ft = {
    python = { "black" },
    nix = { " nixfmt "},
  },
})

-- require("conform").setup({
--   format_on_save = {
--     timeout_ms = 500,
--     lsp_format = "fallback",
--   },
-- })
