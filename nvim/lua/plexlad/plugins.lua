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
  vim.g.loaded_netrw, vim.g.loaded_netrwPlugin = 1
  require("nvim-tree").setup()

  use "michaelb/do-nothing.vim" -- Literally does nothing
  use ({
    "folke/noice.nvim",
	config = function()
	  require("noice").setup({
	    lsp = {
		  -- Overrides markdown editing
		  override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
		    ["cmp.entry.get_documentation"] = true
	      },
		},
	  presets = {
		  bottom_search = true, -- uses bottom for search
		  command_palette = true, -- position the cmdline and popupmenu together
		  long_message_to_split = true, -- Long messages go to a split
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
  use {
	  "folke/trouble.nvim",
	  requires = "kyazdani42/nvim-web-devicons",
	  config = function ()
	    require("trouble").setup {

		}
	  end
  }
  use {
    "phaazon/mind.nvim",
	requires = { "nvim-lua/plenary.nvim" },
	config = function()
	  require'mind'.setup()
	end
  }
  use {
	  "ThePrimeagen/harpoon",
	  {
		  requires = { "ThePrimeagen/harpoon" }
	  }
  }

  -- HTML
  use "alvan/vim-closetag" -- Closes HTML tags
  use "AndrewRadev/tagalong.vim" -- Change two HTML tags at the same time
  use {"akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons"}

  -- Completion --
  use "hrsh7th/nvim-cmp" -- Adds autocompletion, extensions below
  use "hrsh7th/cmp-buffer" -- Buffer completions
  use "hrsh7th/cmp-path" -- Path completions
  use "hrsh7th/cmp-cmdline" -- Command line completions
  use "saadparwaiz1/cmp_luasnip" -- Completion source for nvim-cmp
  use "David-Kunz/cmp-npm" -- NPM package completion

  -- LSP -- 
  use "VonHeikemen/lsp-zero.nvim"
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "hrsh7th/cmp-nvim-lsp"

  -- Snippets
  use { "L3MON4D3/LuaSnip", run = "make install_jsreqexp" }
  use "rafamadriz/friendly-snippets"

  -- Themes -- 
  use "navarasu/onedark.nvim"
  use "ellisonleao/gruvbox.nvim"
  use "catppuccin/nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
