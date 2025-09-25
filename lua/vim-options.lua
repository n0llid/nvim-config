--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
-- See `:help mapleader`

-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- This is where all base vim commands and options are configured
vim.cmd 'set expandtab'
vim.cmd 'set tabstop=2'
vim.cmd 'set softtabstop=2'
vim.cmd 'set shiftwidth=2'
vim.cmd 'set number'
vim.cmd 'set relativenumber'

-- NOTE: To fix background colors
if vim.fn.has 'termguicolors' == 1 then
  vim.o.termguicolors = true
end

-- [[ Setting options ]]
-- See `:help vim.opt`
-- For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- [[ Text Wrapping ]]

-- Set line length indicator
vim.opt.colorcolumn = '80'

-- Enable automatic line wrapping
vim.opt.wrap = true

-- Wrap at word boundaries, not mid-word
vim.opt.linebreak = true

-- Indent wrapped lines to match indentation level
vim.opt.breakindent = true

-- Show an arrow at the start of wrapped lines
vim.opt.showbreak = "↪ "

--  Set the maximum width for text wrapping
vim.opt.textwidth = 0

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>zz')

-- Paste over currently selected text without yanking it
vim.keymap.set('v', 'p', '"_dp')
vim.keymap.set('v', 'P', '"_dP')

-- Copy everything between { and } including the brackets
vim.keymap.set('n', 'YY', 'va{Vy', { desc = '[Y]ank function' })

-- Change keybind for block edit mode as <C-v> is system clipboard
vim.keymap.set('n', '<leader>vb', '<C-v>', { noremap = true, silent = true, desc = '[v]isual [b]lock mode' })

-- Remap to move selection blocks relative to tree sitter
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Keep cursor centered when scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- BUG: This does not work inside Tmux due to escape characters
--
-- Map Control + Tab key to Next Buffer(:bn) in normal mode
vim.keymap.set('n', '<C-Tab>', ':bn<CR>', { noremap = true, silent = true })

-- Map a key to close the currently focused buffer
vim.keymap.set('n', '<leader>x', ':bdelete<CR>', { noremap = true, silent = true, desc = 'Delete Buffer' })

-- Disabling default diagnostics for tiny-inline-diagnostics
vim.diagnostic.config { virutal_text = false }

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Seperate settings for markdown and text files
-- Text width and other options
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "markdown", "text" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.opt_local.breakindent = true
    vim.opt_local.showbreak = "↪ "
    -- vim.opt_local.textwidth = 80
    vim.opt_local.colorcolumn = ''
  end,
})
-- [[ Comment Color Hightlight ]]
-- This will be replaced by my plugin comment-color.nvim
-- local comment_toggle_state = false
-- local original_comment_hl = nil
--
-- local function toggle_comment_highlight()
--   if not comment_toggle_state then
--     -- Store original highlight (works with colorscheme changes)
--     original_comment_hl = vim.api.nvim_get_hl(0, { name = 'Comment' })
--
--     -- Apply bright highlight
--     vim.api.nvim_set_hl(0, 'Comment', {
--       fg = '#FF5555', -- Bright red example
--       bold = true,
--       italic = false,
--     })
--     comment_toggle_state = true
--   else
--     -- Restore original highlight
--     if original_comment_hl then
--       vim.api.nvim_set_hl(0, 'Comment', original_comment_hl)
--     else
--       vim.cmd('hi! clear Comment') -- Fallback to colorscheme default
--     end
--     comment_toggle_state = false
--   end
-- end
--
-- -- Keybinding
-- vim.keymap.set('n', '<leader>cc', toggle_comment_highlight, { desc = 'Toggle [c]omment [c]olor highlight' })
