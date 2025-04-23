local M = {}

-- Path to saved colorscheme name
local scheme_file = vim.fn.stdpath("config") .. "/lua/custom/colorscheme_name.lua"

-- Load last used colorscheme on startup
function M.load_colorscheme()
  local ok, scheme = pcall(dofile, scheme_file)
  if ok and type(scheme) == "string" then
    vim.cmd("colorscheme " .. scheme)
  else
    vim.cmd("colorscheme rose-pine-moon") -- fallback
  end
end

-- Autocmd to save colorscheme changes
function M.setup_autosave()
  vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
      local name = vim.g.colors_name
      if name then
        local f = io.open(scheme_file, "w")
        if f then
          f:write("return '" .. name .. "'\n")
          f:close()
        end
      end
    end,
  })
end

-- Run setup
M.load_colorscheme()
M.setup_autosave()

return M
