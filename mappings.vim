" Blok Arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
set mouse=

" Mapping of Shortcuts
nmap <C-s> :w<CR>
imap <C-s> <Esc><C-s>
vmap <C-s> <Esc><C-s>
nmap <C-z> u<CR>
imap <C-z> <Esc>u<CR>

" Mapping telescope Shortcuts
nmap <C-t> :Telescope find_files<CR>
imap <C-t> <Esc><C-t>
nmap <C-d> .
imap <C-d> <Esc><C-d>

" Competitive Programming
nnoremap <C-M-l> :CompetiTest run_no_compile<CR>
nnoremap <C-M-k> :CompetiTest add_testcase<CR>

