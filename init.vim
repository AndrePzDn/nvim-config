set number
" set rnu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showcmd
set encoding=utf-8
set showmatch
set hidden
set termguicolors
set cursorline
set clipboard=unnamedplus
set textwidth=80
set colorcolumn=80
syntax enable

so $HOME/.config/nvim/plugs.vim
so $HOME/.config/nvim/mappings.lua
so $HOME/.config/nvim/plug-config/airline.lua
so $HOME/.config/nvim/plug-config/auto-comment.vim
so $HOME/.config/nvim/plug-config/cmp.lua
so $HOME/.config/nvim/plug-config/colorizer.lua
so $HOME/.config/nvim/plug-config/devicons.lua
so $HOME/.config/nvim/plug-config/debugger.lua
so $HOME/.config/nvim/plug-config/formatter.lua
so $HOME/.config/nvim/plug-config/gitsigns.lua
so $HOME/.config/nvim/plug-config/hlchunck.lua
so $HOME/.config/nvim/plug-config/mason.lua
so $HOME/.config/nvim/plug-config/linter.lua
so $HOME/.config/nvim/plug-config/lsp.lua
so $HOME/.config/nvim/plug-config/notify-conf.vim
so $HOME/.config/nvim/plug-config/notify.lua
so $HOME/.config/nvim/plug-config/pcm.lua
so $HOME/.config/nvim/plug-config/start-screen.vim
so $HOME/.config/nvim/plug-config/telescope-conf.lua
so $HOME/.config/nvim/plug-config/toggleterm.lua
so $HOME/.config/nvim/plug-config/transparent.lua
so $HOME/.config/nvim/plug-config/treesitter.lua

" colorscheme onedark_vivid
" colorscheme gruvbox
colorscheme catppuccin-macchiato

" hi CursorLine guibg=#272C31 guifg=NONE
hi StartifyHeader guifg=#C678DD
hi Visual guifg=#FFFFFF guibg=none gui=underline
hi Search guifg=none guibg=none gui=underdouble
hi MatchParen guifg=none guibg=none gui=underdouble
