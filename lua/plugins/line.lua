return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'location' },
      lualine_c = { 'filename' },
      lualine_x = {
        'encoding',
        {
          'fileformat',
          symbols = {
            unix = 'LF',
            dos = 'CRLF',
            mac = 'CR',
          }
        },
        'filetype'
      },
      lualine_y = { 'searchcount' },
      lualine_z = { 'lsp_status' }
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    },
  }
}
