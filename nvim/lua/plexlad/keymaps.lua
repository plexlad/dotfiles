local opts = { noremap = true, silent = true }
local km = vim.api.nvim_set_keymap

km("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
km("n", "<C-h>", "<C-w>h", opts)
km("n", "<C-j>", "<C-w>j", opts)
km("n", "<C-k>", "<C-w>k", opts)
km("n", "<C-l>", "<C-w>l", opts)

km("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- Open file explorer to the left

-- Split windows
km("n", "<leader>wv", ":vertical split<CR>", opts)
km("n", "<leader>wh", ":split<CR>", opts)

-- New tab
km("n", "<leader>n", ":tabnew<CR>", opts)
km("n", "<leader>l", ":tabnext<CR>", opts)
km("n", "<leader>h", ":tabprevious<CR>", opts)

-- Resize with arrows
km("n", "<C-Up>", ":resize +2<CR>", opts)
km("n", "<C-Down>", ":resize -2<CR>", opts)
km("n", "<C-Right>", ":vertical resize +2<CR>", opts)
km("n", "<C-Left>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
km("n", "<S-l>", ":bnext<CR>", opts)
km("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
km("i", "jk", "<ESC>", opts)
-- Autobrackets
--km("i", '"', '""<left>', opts)
--km("i", "'", "''<left>", opts)
--km("i", "(", "()<left>", opts)
--km("i", "[", "[]<left>", opts)
--km("i", "{", "{}<left>", opts)
--km("i", "{<CR>", "{<CR>}<ESC>O", opts)
--km("i", "{;<CR>", "{<CR>};<ESC>O", opts)

-- Plugins --
-- Telescope shortcuts
km("n", "<leader>sf", ":Telescope find_files<CR>", opts)

-- folke plugins
-- trouble
km("n", "<leader>t", ":Trouble<CR>", opts)

-- Mind
km("n", "<leader>mm", ":MindOpenMain<CR>", opts)
km("n", "<leader>mp", ":MindOpenSmartProject", opts)
km("n", "<leader>mc", ":MindClose<CR", opts)
