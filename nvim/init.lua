-- VARIABLES --
local user = "plexlad";
local colorscheme = "gruvbox";

require "plexlad.plugins"
require "plexlad.options"
require "plexlad.keymaps"
require "plexlad.cmp"
require "plexlad.lsp"

require("notify").setup({
	background_color = "#000000"
})

-- Uses a protected call to check for an error when checking colorscheme
if not pcall(vim.cmd, "colorscheme " .. colorscheme) then
	 vim.notify("colorscheme " .. colorscheme .. " not found!")
	 return
end
