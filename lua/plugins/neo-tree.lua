-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\',         ':Neotree reveal<CR>',               { desc = 'NeoTree reveal' } },
    { '<leader>bf', ':Neotree buffers reveal float<CR>', { desc = 'Buffer Find' } },
    -- This is the better use of buffer mapping sourced in "~/.config/nvim/lua/vim-options.lua"
    -- vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })
  },
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_hidden = false,
        hide_by_name = {},
        hide_gitignored = false,
      },
      window = {
        width = 30,
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
