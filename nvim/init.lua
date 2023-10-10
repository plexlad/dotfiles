-- VARIABLES --
local user = "plexlad";
local colorscheme = "gruvbox";

require "plexlad.plugins"  -- All of my plugins configured with lazy.nvim
require "plexlad.options"  -- My custom global options
require "plexlad.keymaps"  -- Custom keymaps
require "plexlad.lsp"      -- My LSP and cmp configuration for autocomplete

require("notify").setup({
	background_color = "#000000"
})

-- Uses a protected call to check for an error when checking colorscheme
if not pcall(vim.cmd, "colorscheme " .. colorscheme) then
	 vim.notify("colorscheme " .. colorscheme .. " not found!")
	 return
end
