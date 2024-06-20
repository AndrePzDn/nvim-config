call plug#begin('~/.vim/plugged')

" General Plugins

Plug 'jiangmiao/auto-pairs' " AutoPair Plugin () [] {}
Plug 'akinsho/toggleterm.nvim' , {'tag': '*'} " TogleTerm Plugin

    " Airline Plugins
Plug 'vim-airline/vim-airline' " Airline for commands
Plug 'vim-airline/vim-airline-themes'

    " Telescopre Plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim' , { 'tag': '0.1.5' }
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

    " Themes / colorschemas
Plug 'olimorris/onedarkpro.nvim' "One Dark Pro Color Scheme
Plug 'morhetz/gruvbox'

    " Plugins for NerdTree
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'

    " Competitive Programming
Plug 'MunifTanjim/nui.nvim'        " it's a dependency
Plug 'xeluxee/competitest.nvim'

    " Notifications
Plug 'rcarriga/nvim-notify'

    " Auto Comment
Plug 'KarimElghamry/vim-auto-comment'

    " Highlighter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Git Plugins
Plug 'lewis6991/gitsigns.nvim'

    " Native LSP
Plug 'neovim/nvim-lspconfig'

    " Linter
Plug 'mfussenegger/nvim-lint'

    " Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

    " Formatter
Plug 'stevearc/conform.nvim'

    " Mason Plugin
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

    " LSP Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'

    " Debugging
Plug 'mfussenegger/nvim-dap'
Plug 'nvim-neotest/nvim-nio'
Plug 'rcarriga/nvim-dap-ui'

    " Starting Page
Plug 'mhinz/vim-startify'

    " Fzf
Plug 'vijaymarupudi/nvim-fzf'

    " Transparent background nvim
Plug 'xiyaowong/transparent.nvim'

    " GitHub Copilot
Plug 'github/copilot.vim'

    " Colorizer Plugin
Plug 'norcalli/nvim-colorizer.lua'

    " Highlight Chunk
Plug 'shellRaining/hlchunk.nvim'

    " Tmux Navigator
Plug 'christoomey/vim-tmux-navigator'

" Dotnet Plugins

    " Omnisharp extended
Plug 'Hoffs/omnisharp-extended-lsp.nvim'

    " Vim Nuget
Plug 'markwoodhall/vim-nuget'
Plug 'mattn/webapi-vim'
Plug 'Shougo/deoplete.nvim'

" Markdown Plugins

    " Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" HTML Plugins

    " Auto Close Tags
Plug 'windwp/nvim-ts-autotag'


call plug#end()
