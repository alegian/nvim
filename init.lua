vim.opt.clipboard:append("unnamedplus")
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })

require("config.lazy")
