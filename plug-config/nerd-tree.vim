function! NERDTreeRefreshWhileOpen()
  :NERDTreeToggle
  :NERDTreeRefreshRoot

  if g:NERDTree.IsOpen()
    :NERDTreeRefreshRoot
  endif
endfunction

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" map <C-b> :call NERDTreeRefreshWhileOpen()<CR>

let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✱",
    \ "Staged"    : "✚",
    \ "Untracked" : "✗",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✱",
    \ "Clean"     : "✔",
    \ "Ignored"   : "☒",
    \ }

let g:webdevicons_enable_nerdtree_maps = 1
let g:webdevicons_nerdtree_maps = {
 \ 'Icon' : '',
 \ 'OpenedFile' : '',
 \ 'OpenedFolder' : '',
 \ 'EmptyFolder' : '',
 \ 'Symlink' : ''
 \}
let g:NERDTreeShowDevIcons = 1
