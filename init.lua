vim.opt.clipboard:append("unnamedplus")
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.colorcolumn = "80"
vim.opt.updatetime = 50
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"
vim.opt.completeopt = { "menu", "menuone", "noinsert", "fuzzy", "popup" }
vim.opt.cursorline = true
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")


vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { silent = true })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { silent = true })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { silent = true })
vim.keymap.set("n", "H", vim.lsp.buf.hover, { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { silent = true })
vim.keymap.set("x", "<leader>p", '"_dP', { silent = true })
vim.keymap.set("n", "<leader>d", '"_d', { silent = true })
vim.keymap.set("x", "<leader>d", '"_d', { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "n", "nzzzv", { silent = true })
vim.keymap.set("n", "N", "Nzzzv", { silent = true })
vim.keymap.set("v", "<", "<gv", { silent = true })
vim.keymap.set("v", ">", ">gv", { silent = true })
vim.keymap.set("i", "<Tab>", "<C-y>", { silent = true })
vim.keymap.set("n", "g]", vim.diagnostic.goto_next, { silent = true })
vim.keymap.set("n", "g[", vim.diagnostic.goto_prev, { silent = true })
vim.keymap.set("i", "<C-Space>", function()
  vim.lsp.completion.get()
end, { silent = true })

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

vim.diagnostic.config({
  virtual_lines = {
    current_line = true,
  },
})

require("config.lazy")
