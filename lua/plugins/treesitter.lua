return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",   -- met à jour les parsers automatiquement après install
  event = { "BufReadPost", "BufNewFile" }, -- charge au besoin
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua", "vim", "bash", "python", "json", "markdown", "html", "css", "javascript", "typescript", "rust", "go"
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    })
  end,
}

