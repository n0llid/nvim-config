return {
  {
    -- For local development
    -- dir = "~/Projects/comment-color.nvim", -- Path to your plugin directory
    "n0llid/comment-color.nvim",
    config = function()
      -- Optional custom configuration
      require("comment-color").setup({})
    end
  }
}
