return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<localleader>f",
      function()
        require("conform").format({ async = true })
      end,
      mode = "n",
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      json = { "prettierd" },
      typescript = { "prettierd" },
      javascript = { "prettierd" },
      html = { "prettierd" },
      markdown = { "prettierd" },
    },
    default_format_opts = {
      lsp_format = "fallback",
    },
  },
}
