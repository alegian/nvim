return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    -- default LSP configurations
    "neovim/nvim-lspconfig",
  },
  {
    -- automatically enable mason LSPs
    "mason-org/mason-lspconfig.nvim",
    opts = {},
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      auto_update = true,
      run_on_start = true,
      ensure_installed = {
        -- LSPs
        "lua-language-server",
        "typescript-language-server",
        "kotlin-lsp",
        "tailwindcss-language-server",
        "java-language-server",
        "gradle-language-server",
        "json-lsp",
        "html-lsp",
        -- Formatters
        "stylua",
        "prettierd",
        "eslint_d",
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescriptreact = { "eslint_d" },
      }

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
  },
}
