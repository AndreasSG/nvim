
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use("nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'})

  use("ThePrimeagen/harpoon")

  use("mbbill/undotree")

  use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  })

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  -- Snippet Collection (Optional)
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use ({ "catppuccin/nvim", as = "catppuccin", config = function()
	  require("catppuccin").setup({
		  flavour = "mocha", -- latte, frappe, macchiato, mocha
		  background = { -- :h background
		  light = "latte",
		  dark = "mocha",
	  },
	  transparent_background = false,
	  term_colors = false,
	  dim_inactive = {
		  enabled = true,
		  shade = "dark",
		  percentage = 0.15,
	  },
	  no_italic = false, -- Force no italic
	  no_bold = false, -- Force no bold
	  styles = {
		  comments = { "italic" },
		  conditionals = { "italic" },
		  loops = {},
		  functions = {},
		  keywords = {},
		  strings = {},
		  variables = {},
		  numbers = {},
		  booleans = {},
		  properties = {},
		  types = {},
		  operators = {},
	  },
	  color_overrides = {
		mocha = {
				rosewater = "#F5E0DC",
				flamingo = "#F2CDCD",
				mauve = "#DDB6F2",
				pink = "#F5C2E7",
				red = "#F28FAD",
				maroon = "#E8A2AF",
				peach = "#F8BD96",
				yellow = "#FAE3B0",
				green = "#ABE9B3",
				blue = "#96CDFB",
				sky = "#89DCEB",
				teal = "#B5E8E0",
				lavender = "#C9CBFF",

				text = "#D9E0EE",
				subtext1 = "#BAC2DE",
				subtext0 = "#A6ADC8",
				overlay2 = "#C3BAC6",
				overlay1 = "#988BA2",
				overlay0 = "#6E6C7E",
				surface2 = "#6E6C7E",
				surface1 = "#575268",
				surface0 = "#302D41",

				base = "#1E1E2E",
				mantle = "#1A1826",
				crust = "#161320",
			},
	  },
	  custom_highlights = {},
	  integrations = {
		  cmp = true,
		  gitsigns = true,
		  nvimtree = true,
		  telescope = true,
		  notify = false,
		  mini = false,
		  -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	  },
  })

  -- setup must be called before loading
  vim.cmd('colorscheme catppuccin')
  end
  })

end)
