--  ~/.config/nvim/lua/rpm_lualine_theme.lua

-- NOTE: This is a work in progress based on the Rose Pine Moon color palette
-- stylua: ignore

local colors = {
  gray       = '#2a273f', -- Surface: bg
  lightgray  = '#6e6a86', -- Muted: bgbg
  orange     = '#f6c177', -- Gold: Command bg
  purple     = '#9ccfd8', -- Foam: main bg (Normal)
  red        = '#eb6f92', -- Love: Replace
  yellow     = '#ea9a97', -- Rose: Visual bg
  green      = '#3e8fb0', -- Pine: Insert bg
  white      = '#e0def4', -- Text: main fg (text on bg and bgbg)
  black      = '#232136', -- Base: main2 fg (text on color)
}

return {
  normal = {
    a = { bg = colors.purple, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.gray, fg = colors.white },
  },
  insert = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.gray, fg = colors.white },
  },
  visual = {
    a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.gray, fg = colors.white },
  },
  replace = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.gray, fg = colors.white },
  },
  command = {
    a = { bg = colors.orange, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.gray, fg = colors.white },
  },
  inactive = {
    a = { bg = colors.gray, fg = colors.white, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.gray, fg = colors.white },
  },
}
