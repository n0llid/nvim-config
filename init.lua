-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)


-- [[ Require other file locations ]]
require 'vim-options' -- file located at 'nvim/lua/vim-options.lua'

-- [[ Configure and install plugins ]]
-- TODO: Modularize plugins and move them to their own separate files.
require('lazy').setup({ { import = "plugins" } })

-- TODO: Consolidate/fix lsp configs to follow one standard
-- Use Adib Hanna native LSP config video on YT

-- [[ This is where colorscheme is being called ]]
-- Options: rose-pine-moon, tokyonight-night, darkthrone, evergarden, moonfly, oldworld, cuddlefish
vim.cmd.colorscheme("moonfly")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
