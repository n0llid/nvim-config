return {
  {
    'rose-pine/neovim',
    lazy = false,
    name = 'rose-pine',
    priority = 1000,
    config = function()
      require('rose-pine').setup {
        variant = 'moon',      -- auto, main, moon, or dawn
        dark_variant = 'moon', -- main, moon, or dawn
        dim_inactive_windows = true,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true,        -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },

        groups = {
          border = 'muted',
          link = 'iris',
          panel = 'surface',

          error = 'love',
          hint = 'iris',
          info = 'foam',
          note = 'pine',
          todo = 'rose',
          warn = 'gold',

          git_add = 'foam',
          git_change = 'rose',
          git_delete = 'love',
          git_dirty = 'rose',
          git_ignore = 'muted',
          git_merge = 'iris',
          git_rename = 'pine',
          git_stage = 'iris',
          git_text = 'rose',
          git_untracked = 'subtle',

          h1 = 'iris',
          h2 = 'foam',
          h3 = 'rose',
          h4 = 'gold',
          h5 = 'pine',
          h6 = 'foam',
        },

        highlight_groups = {
          Comment = { fg = 'foam' },
          -- VertSplit = { fg = 'muted', bg = 'muted' },
          NormalMoody = { fg = 'iris' },
          InsertMoody = { fg = 'pine' },
          VisualMoody = { fg = 'rose' },
          CommandMoody = { fg = 'gold' },
          ReplaceMoody = { fg = 'pine' },
          SelectMoody = { fg = 'foam' },
          TerminalMoody = { fg = 'foam' },
          TerminalNormalMoody = { fg = 'pine' },
        },
        before_highlight = function(group, highlight, palette)
        end,
      }
      vim.cmd.colorscheme 'rose-pine' -- Probably not needed
    end,
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    'everviolet/nvim',
    name = 'evergarden',
    priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
    opts = {
      theme = {
        variant = 'winter', -- 'winter'|'fall'|'spring'|'summer'
        accent = 'green',
      },
      editor = {
        transparent_background = false,
        sign = { color = 'none' },
        float = {
          color = 'mantle',
          invert_border = false,
        },
        completion = {
          color = 'surface0',
        },
      },
    }
  },
  {
    'metalelf0/black-metal-theme-neovim',
    lazy = false,
    priority = 1000,
    config = function()
      require('black-metal').setup({
        -- optional configuration here
        -- Can be one of: bathory | burzum | dark-funeral | darkthrone | emperor | gorgoroth | immortal | impaled-nazarene | khold | marduk | mayhem | nile | taake | venom
        theme = 'darkthrone',
      })
      require('black-metal').load()
    end,
  },
  {
    'bluz71/vim-moonfly-colors',
    name = 'moonfly',
    lazy = false,
    priority = 1000
  },
  {
    'dgox16/oldworld.nvim',
    lazy = false,
    priority = 1000,
  },
  {
    'comfysage/cuddlefish.nvim',
    lazy = false,
    name = 'cuddlefish',
    priority = 1000,
    config = function()
      require('cuddlefish').setup({
        theme = {
          accent = 'pink',
        },
        editor = {
          transparent_background = false,
        },
        style = {
          tabline = { 'reverse' },
          search = { 'italic', 'reverse' },
          incsearch = { 'italic', 'reverse' },
          types = { 'italic' },
          keyword = { 'italic' },
          comment = { 'italic' },
        },
        overrides = function(colors)
          return {}
        end,
      })

      vim.cmd.colorscheme [[cuddlefish]]
    end
  },
}
