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
syntax enable

so $HOME/.config/nvim/plugs.vim
so $HOME/.config/nvim/mappings.vim
so $HOME/.config/nvim/plug-config/coc.vim
so $HOME/.config/nvim/plug-config/toggleterm.lua
so $HOME/.config/nvim/plug-config/pcm.lua
so $HOME/.config/nvim/plug-config/notify.lua
so $HOME/.config/nvim/plug-config/coc.vim
so $HOME/.config/nvim/plug-config/notify-conf.vim

" Color Scheme Config / Onedark
" colorscheme onedark
colorscheme gruvbox

" NerdTree Config
nmap <C-b> :NERDTreeToggle<CR>
imap <C-b> <Esc><C-b>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd VimEnter * TSEnable highlight

let g:airline_theme="bubblegum"
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeChDirMode = 2
let g:inline_comment_dict = {
		\'//': ["js", "ts", "cpp", "c", "dart", "java"],
		\'#': ['py', 'sh'],
		\'"': ['vim'],
		\';': ['asm'],
    \'--': ['hs'],
    \}
