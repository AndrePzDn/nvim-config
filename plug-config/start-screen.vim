"'figlet -w 100 VIM2020 returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")

let g:startify_lists = [
        \ { 'type': 'bookmarks', 'header': ['   Shortcuts']      },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': function('s:gitModified'),  'header': ['   Git Changes']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   Git Untracked Files']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

let g:ascii = [
      \'',
      \'',
      \'',
      \' █████╗ ███╗   ██╗██████╗ ██████╗ ███████╗██████╗ ███████╗██████╗ ███╗   ██╗',
      \'██╔══██╗████╗  ██║██╔══██╗██╔══██╗██╔════╝██╔══██╗╚══███╔╝██╔══██╗████╗  ██║',
      \'███████║██╔██╗ ██║██║  ██║██████╔╝█████╗  ██████╔╝  ███╔╝ ██║  ██║██╔██╗ ██║',
      \'██╔══██║██║╚██╗██║██║  ██║██╔══██╗██╔══╝  ██╔═══╝  ███╔╝  ██║  ██║██║╚██╗██║',
      \'██║  ██║██║ ╚████║██████╔╝██║  ██║███████╗██║     ███████╗██████╔╝██║ ╚████║',
      \'╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝     ╚══════╝╚═════╝ ╚═╝  ╚═══╝',
      \'',
      \'',
      \'',
  \ ]

let g:startify_custom_indices = ['v', 'p', 'w', 'r']

let g:startify_custom_header =
          \ 'startify#center(g:ascii)'


autocmd User Startified nmap <buffer> o <plug>(startify-open-buffers)

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
