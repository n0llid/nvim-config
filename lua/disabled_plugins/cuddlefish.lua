return {
  {
    "comfysage/cuddlefish.nvim",
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
  }
}
