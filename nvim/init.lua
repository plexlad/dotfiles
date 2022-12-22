require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.cmp"
require "user.lsp"

-- Variables --
local colorscheme = "onedark"

-- Uses a protected call to check for an error when checking colorscheme
if not pcall(vim.cmd, "colorscheme " .. colorscheme) then
	 vim.notify("colorscheme " .. colorscheme .. " not found!")
	 return
end
