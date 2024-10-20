vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.api.nvim_create_augroup("CustomTabSettings", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript,typescript,typescriptreact,javascriptreact",
  group = "CustomTabSettings",
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.expandtab = true
  end,
})

vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.g.mapleader = " "

