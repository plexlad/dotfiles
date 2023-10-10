local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself

  -- Dependancies --
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/popup.nvim"

  -- Neat plugins
  use "nvim-telescope/telescope.nvim" -- Fuzzy finder!
  use { -- Auto bracket pairing
    "m4xshen/autoclose.nvim",
	config = function()
	  require("autoclose").setup({})
	end
  }
  use "nvim-tree/nvim-web-devicons"
  use "nvim-tree/nvim-tree.lua"
  -- Disables netrw for tree
  vim.g.loaded_netrw, vim.g.loaded_netrwPlugin = 1, 1
  require("nvim-tree").setup()

  use {
	  "nvim-treesitter/nvim-treesitter",
	  {
		  run = ":TSUpdate"
	  }
  }
  use "mbbill/undotree"
  use "tpope/vim-fugitive"

  use "michaelb/do-nothing.vim" -- Literally does nothing
  use {
	  "folke/trouble.nvim",
	  requires = "kyazdani42/nvim-web-devicons",
	  config = function ()
	    require("trouble").setup {
		}
	  end
  }
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
	  config = function()
		require('lualine').setup {
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'branch', 'diff', 'diagnostics'},
				lualine_y = {'progress'},
				lualine_z = {'location'}
			}
		}
	end
  }
  use "andweeb/presence.nvim"
  use "Glench/Vim-Jinja2-Syntax"

  -- HTML
  use "alvan/vim-closetag" -- Closes HTML tags
  use  {
	  "norcalli/nvim-colorizer.lua", -- Adds color visualizer!
	  config = function()
		require'colorizer'.setup()
	end
  }

  -- Noice --
  use ({
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
	}
  })

  -- LSP and Autocompletion --
  use {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			{"neovim/nvim-lspconfig"},
			{"hrsh7th/nvim-cmp"},
			{"hrsh7th/cmp-nvim-lsp"},
			{"hrsh7th/cmp-nvim-lua"},
			{"L3MON4D3/LuaSnip"},
		}
	}
	use {"williamboman/mason.nvim"}
	use {"williamboman/mason-lspconfig.nvim"}

  -- Themes -- 
  use "navarasu/onedark.nvim"
  use "morhetz/gruvbox"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
