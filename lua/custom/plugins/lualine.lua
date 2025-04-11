return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local custom_theme = require 'rpm_lualine_theme' -- Load custom theme

    -- BUG: Not currently doing anything
    --
    -- Filler line function
    -- local function custom_filler()
    --   local fill_char = '_'
    --   local win_width = vim.fn.winwidth(0)
    --   local left_sections = { vim.fn.strwidth(vim.o.columns) }
    --   local right_sections = { vim.fn.strwidth(vim.o.lualine_x) }
    --   local left_section_width = 0
    --   local right_section_width = 0
    --   for _, section in ipairs(left_sections) do
    --     left_section_width = left_section_width + section
    --   end
    --   for _, section in ipairs(right_sections) do
    --     right_section_width = right_section_width + section
    --   end
    --   local filler_width = win_width - left_section_width - right_section_width - 2
    --   return string.rep(fill_char, filler_width)
    -- end

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
