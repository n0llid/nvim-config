return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local custom_theme = require 'rpm_lualine_theme' -- Load custom theme

    require('lualine').setup {
      options = {
        theme = custom_theme, -- default: dracula
        section_separators = { left = '', right = '' }, --    
      },
      sections = {
        -- lualine_a = { { 'mode', separator = { right = '' }, right_padding = 2 } },
        lualine_c = { 'filename' },
        --lualine_x = { { custom_filler, color = { fg = '#ea9a97' } }, 'filetype' },
        lualine_x = { 'filetype' },
        lualine_y = { { '%p%%/%L', separator = { left = ' ' }, left_padding = 2 } },
        lualine_z = { { '%l:%c', separator = { left = ' ' }, left_padding = 2 } },
      },
    }
  end,
}
