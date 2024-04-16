call plug#begin('~/.vim/plugged')

" AutoPair Plugin () [] {}
Plug 'jiangmiao/auto-pairs'

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
Plug 'nvim-lua/popup.nvim'
Plug 'https://github.com/nvim-telescope/telescope-media-files.nvim'

" Themes / colorschemas
Plug 'olimorris/onedarkpro.nvim' "One Dark Pro Color Scheme
Plug 'morhetz/gruvbox'

" Plugins for NerdTree
Plug 'preservim/nerdtree' " NerdTree
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
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

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Highlight Chunk
Plug 'shellRaining/hlchunk.nvim'

" File Browser
Plug 'nvim-telescope/telescope-file-browser.nvim'

call plug#end()

