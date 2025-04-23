return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  event = 'ColorScheme',
  config = function()
    local highlights = require 'rose-pine.plugins.bufferline'
    vim.opt.termguicolors = true

    local bufferline = require 'bufferline'
    bufferline.setup {
      highlights = highlights,
      options = {
        --- @usage 'rose-pine' | 'rose-pine-alt'
        theme = 'rose-pine-moon',
        -- style_preset = bufferline.style_preset.no_italic,
        separator_style = 'thick',
        numbers = 'ordinal',
        indicator = {
          style = 'underline',
        },
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'Neo-Tree',
            highlight = 'Directory',
            separator = true, -- use a "true" to enable the default, or set your own character
          },
        },
      },
    }
  end,
}
