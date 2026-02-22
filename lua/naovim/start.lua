vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.softtabstop=4
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true
   
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", function()
  if not require("mini.files").close() then
    require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
  end
end, { desc = "Open mini.files (current file)" })
vim.g.maplocalleader = "\\"
