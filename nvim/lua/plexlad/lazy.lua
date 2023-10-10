return {
  -- Themes -- 
	{
		"morhetz/gruvbox",
		lazy = false,
		priority = 9999,
		config = function()
			vim.cmd([[colorscheme tokyonight]])
		end
	},

  -- Dependancies --
	{ "nvim-lua/popup.nvim", lazy = true },

  -- Neat plugins
	{ "nvim-telescope/telescope.nvim", lazy = true },
  { -- Auto bracket pairing
    "m4xshen/autoclose.nvim",
	config = function()
	  require("autoclose").setup({})
	end
  },
  { "nvim-tree/nvim-web-devicons", lazy = true },
	{ 
		"nvim-tree/nvim-tree.lua",
		config = function ()
			vim.g.loaded_netrw, vim.g.loaded_netrwPlugin = 1, 1
			require("nvim-tree").setup()
		end
	},
  {
	  "nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	  {
		  run = ":TSUpdate"
	  },
		lazy = false,
  },
	{ "mbbill/undotree", lazy = true },
  { "tpope/vim-fugitive", lazy = true, run = "Git" },

  { "michaelb/do-nothing.vim", lazy = true },
  {
	  "folke/trouble.nvim",
	  requires = { "kyazdani42/nvim-web-devicons" },
  },
  {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons' },
	  config = function()
			require('lualine').setup({
				sections = {
					lualine_a = {'mode'},
					lualine_b = {'branch', 'diff', 'diagnostics'},
					lualine_z = {'location'},
				},
			})
		end
  },

  -- HTML
	{ "alvan/vim-closetag", lazy = false },	-- Closes HTML tags
	{ "norcalli/nvim-colorizer.lua",
		lazy = true, -- Adds color visualizer!
	  config = function()
			require('colorizer').setup()
		end,
  },

  -- Noice --
  {
    "folke/noice.nvim",
		config = function()
			require("noice").setup({
			presets = {
				bottom_search = true,
				command_palette = true, -- position the cmdline and popupmenu together
				long_message_to_split = true,
				inc_rename = false,
				lsp_doc_border = false
			},
		})
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify"
		},
  },

  -- LSP and Autocompletion --
  {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			"neovim/nvim-lspconfig",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",
			"L3MON4D3/LuaSnip",
		}
	},
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
}
