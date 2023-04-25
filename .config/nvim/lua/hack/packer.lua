-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }

  use ('lukas-reineke/indent-blankline.nvim')
  use ({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')
  use ('bluz71/vim-nightfly-colors')
  use ('norcalli/nvim-colorizer.lua')
  use ('nvim-tree/nvim-web-devicons')
  use ({'romgrk/barbar.nvim', wants = 'nvim-web-devicons'})
  use ('CRAG666/code_runner.nvim')

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
         {'rafamadriz/friendly-snippets'},
        }
  }

  use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
        'nvim-tree/nvim-tree.lua',
         requires = { 'nvim-tree/nvim-web-devicons' },
         tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
  }

  use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
  }

end)

