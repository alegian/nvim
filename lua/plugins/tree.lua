return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_hidden = false,
      },
    },
  },
  keys = {
    {
      "<leader>e",
      "<cmd>Neotree toggle current reveal_force_cwd<CR>",
    },
    {
      "|",
      "<cmd>Neotree reveal<CR>",
    },
  },
}
