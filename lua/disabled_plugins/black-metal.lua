return {
  {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 100,
    config = function()
      require("black-metal").setup({
        -- optional configuration here
        -- Can be one of: bathory | burzum | dark-funeral | darkthrone | emperor | gorgoroth | immortal | impaled-nazarene | khold | marduk | mayhem | nile | taake | venom
        theme = "darkthrone",
      })
      require("black-metal").load()
    end,
  }
}
