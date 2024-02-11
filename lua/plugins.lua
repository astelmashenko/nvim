-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- see https://vimcolorschemes.com/
    -- use 'Mofiqul/dracula.nvim'
    -- use "EdenEast/nightfox.nvim"
    -- TODO: need to use true-color terminal like kitty/iterm2
    -- use({
    --     'rose-pine/neovim',
    --     as = 'rose-pine',
    --     config = function()
    --         require("rose-pine").setup()
    --         vim.cmd('colorscheme rose-pine')
    --     end
    -- })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- TODO: alternative file explorer
    -- use {
    --         'nvim-tree/nvim-tree.lua',
    --         requires = {
    --       	  'nvim-tree/nvim-web-devicons', -- optional, for file icons
    --         },
    --         tag = 'nightly' -- optional, updated every week. (see issue #1193)
    -- }

    -- use('mbbill/undotree')

    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    -- statusline plugin
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- comment plugin 
    use 'numToStr/Comment.nvim'

    use "lukas-reineke/indent-blankline.nvim"

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use {'Vigemus/iron.nvim'}

    use {
        'lewis6991/gitsigns.nvim',
    }


    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    -- using packer.nvim
    -- use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    -- vim.opt.termguicolors = true
    -- require("bufferline").setup{}
end)


