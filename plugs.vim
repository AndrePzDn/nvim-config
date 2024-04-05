call plug#begin('~/.vim/plugged')

" AutoPair Plugin () [] {}
Plug 'jiangmiao/auto-pairs'

" ASM LSP
Plug 'bergercookie/asm-lsp'

" TogleTerm Plugin
Plug 'akinsho/toggleterm.nvim' , {'tag': '*'}

" Coc Plugin (Conquer of completion)
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'} " coc

" Airline Plugins
Plug 'vim-airline/vim-airline' " Airline for commands
Plug 'vim-airline/vim-airline-themes'

" Telescopre Plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim' , { 'tag': '0.1.5' }

" Themes / colorschemas
Plug 'https://github.com/olimorris/onedarkpro.nvim' "One Dark Pro Color Scheme
Plug 'morhetz/gruvbox'

" Plugins for NerdTree
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Competitive Programming
Plug 'MunifTanjim/nui.nvim'        " it's a dependency
Plug 'xeluxee/competitest.nvim'

" Ident Line
Plug 'lukas-reineke/indent-blankline.nvim'

" Notifications
Plug 'rcarriga/nvim-notify'

" Auto Comment
Plug 'KarimElghamry/vim-auto-comment'

" Highlighter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" LSP Plugins
" Plug 'https://github.com/prabirshrestha/vim-lsp' " LSP (Language Server Support)
" Plug 'https://github.com/mattn/vim-lsp-settings' " LSP Settings auto install servers

call plug#end()

