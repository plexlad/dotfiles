local user = "plexlad";
local colorscheme = "onedark";

require "plexlad.cmp"
require "plexlad.keymaps"
require "plexlad.lsp"
require "plexlad.options"
require "plexlad.plugins"

-- Variables --
local colorscheme = "onedark"

-- Uses a protected call to check for an error when checking colorscheme
if not pcall(vim.cmd, "colorscheme " .. colorscheme) then
	 vim.notify("colorscheme " .. colorscheme .. " not found!")
	 return
end
