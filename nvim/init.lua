-- VARIABLES --
local user = "plexlad";
local colorscheme = "onedark";

require "plexlad.plugins"
require "plexlad.options"
require "plexlad.keymaps"
require "plexlad.cmp"
require "plexlad.lsp"

-- Uses a protected call to check for an error when checking colorscheme
if not pcall(vim.cmd, "colorscheme " .. colorscheme) then
	 vim.notify("colorscheme " .. colorscheme .. " not found!")
	 return
end
