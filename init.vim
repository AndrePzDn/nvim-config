set number
set rnu
set tabstop=2
set shiftwidth=2
set expandtab
set showcmd
set encoding=utf-8
set showmatch
set hidden
set termguicolors
set cursorline
syntax enable

so $HOME/.config/nvim/plugs.vim
so $HOME/.config/nvim/mappings.vim
so $HOME/.config/nvim/plug-config/airline.vim
so $HOME/.config/nvim/plug-config/auto-comment.vim
so $HOME/.config/nvim/plug-config/coc.vim
so $HOME/.config/nvim/plug-config/colorizer.lua
so $HOME/.config/nvim/plug-config/devicons.lua
so $HOME/.config/nvim/plug-config/hlchunck.lua
so $HOME/.config/nvim/plug-config/nerd-tree.vim
so $HOME/.config/nvim/plug-config/notify-conf.vim
so $HOME/.config/nvim/plug-config/notify.lua
so $HOME/.config/nvim/plug-config/pcm.lua
so $HOME/.config/nvim/plug-config/start-screen.vim
so $HOME/.config/nvim/plug-config/telescope-conf.lua
so $HOME/.config/nvim/plug-config/toggleterm.lua
so $HOME/.config/nvim/plug-config/transparent.lua
so $HOME/.config/nvim/plug-config/treesitter.lua

" Color Scheme Config / Gruvbox 
colorscheme gruvbox

autocmd VimEnter * TSEnable highlight

let g:airline_theme="bubblegum"
