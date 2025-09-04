return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    suggestion = {
      keymap = {
        accept = "<Insert>",
        accept_word = "<C-Right>",
        dismiss = "<Esc>",
      },
    },
  },
}
