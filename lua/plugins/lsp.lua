return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "ts_ls", "kotlin_lsp", "tailwindcss", "java_language_server", "gradle_ls" },
    },
  }
}
