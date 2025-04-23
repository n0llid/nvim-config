return {
  {
    -- For local development
    dir = "~/Projects/undoreplay.nvim", -- Path to your plugin directory
    -- "yourusername/undoreplay.nvim",
    config = function()
      -- Optional custom configuration
      -- vim.keymap.set('n', '<leader>ur', ':UndoReplay<CR>', { desc: [u]ndo[r]eplay })
      vim.keymap.set('n', '<leader>ur', ':UndoReplay<CR>', { desc = '[u]ndo[r]eplay' })
      require("undoreplay").setup({
        -- See configuration options below
        window = {
          width = 0.9,     -- 90% of editor width
          height = 0.7,    -- 70% of editor height
          border = "rounded" -- Border style (none, single, double, rounded, solid, shadow)
        }
      })
    end
  }
}
