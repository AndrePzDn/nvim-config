" Blok Arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" Block Mouse
" set mouse=

" Mapping of Shortcuts
nmap <C-s> :w<CR>
imap <C-s> <Esc><C-s>
vmap <C-s> <Esc><C-s>
nmap <C-z> u<CR>
imap <C-z> <Esc>u<CR>
nmap <C-d> .
imap <C-d> <Esc><C-d>

" Mapping telescope Shortcuts
nmap <C-t> :Telescope find_files<CR>
imap <C-t> <Esc><C-t>
nmap <C-f> :Telescope live_grep<CR>
imap <C-f> <Esc><CS-f>

" Competitive Programming
nnoremap <C-M-l> :CompetiTest run_no_compile<CR>
nnoremap <C-M-k> :CompetiTest add_testcase<CR>

" GitHub Copilot Shortcuts
" nmap <C-i> :Copilot panel<CR>
" imap <C-i> <Esc><C-i>
imap <silent><script><expr> <C-k> copilot#Accept("\<C-R>")
let g:copilot_no_tab_map = v:true


" Tmux mappings
nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>

" NerdTree Config
" nmap <C-b> :NERDTreeToggle<CR>
" imap <C-b> <Esc><C-b>

" File Browser Telescope Shortcuts
nmap <C-b> :Telescope file_browser<CR><Esc>
imap <C-b> <Esc><C-b>

nnoremap <C-/> :AutoInlineComment<CR>
vnoremap <C-/> :AutoInlineComment<CR>
inoremap <C-/> <Esc>:AutoInlineComment<CR>

