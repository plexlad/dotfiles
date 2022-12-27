local opts = { noremap = true, silent = true }
local km = vim.api.nvim_set_keymap
local builtin = require('telescope.builtin')

km("n", "<leader>tf", builtin.find_files, opts)
km("n", "<leader>tg", builtin.live_grep, opts)
km("n", "<leader>tb", builtin.buffers, opts)
km("n", "<leader>th", builtin.help_tags, opts)
