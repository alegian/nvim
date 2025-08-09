return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    suggestion = {
      keymap = {
        accept = "<Insert>",
        dismiss = "<Esc>",
      },
    },
  },
}
