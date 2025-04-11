return {
  {
    'brenoprata10/nvim-highlight-colors',
    lazy = true,
    config = function()
      require('nvim-highlight-colors').setup {
        render = 'virtual',
        virtual_symbol = '■',
        enable_tailwind = true,
      }
    end,
  },
}
