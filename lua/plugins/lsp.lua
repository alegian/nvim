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
    keys = {
      {
        "<localleader>l",
        function()
          vim.cmd("w")
          local eslint = require("lint").linters.eslint_d.args
          table.remove(eslint, #eslint - 1)
          table.remove(eslint, #eslint - 1)
          table.insert(eslint, "--fix")
          require("lint").try_lint()
          table.remove(eslint)
          table.insert(eslint, #eslint, "--stdin")
          table.insert(eslint, #eslint, "--stdin-filename")
          vim.defer_fn(function()
            vim.cmd("checktime")
          end, 1000)
        end,
        mode = "n",
      },
    },
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
