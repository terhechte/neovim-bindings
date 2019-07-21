" Use ripgrep to search through all the project files
" In the current git repository
command! -bang -nargs=* RipGrep
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>).' '.split(system('git rev-parse --show-toplevel'), '\n')[1], 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" List all the files in the current git project
" We have to use `[1] instead of 0 because on this system, fish shell has a 
" setenv: Too many arguments warning as the first line.
command! -bang -nargs=* -complete=dir RepoFiles
  \ call fzf#vim#files(split(system('git rev-parse --show-toplevel'), '\n')[1],
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Convenience to print warning.
" FIXME: Move to another file for helper functions
function! s:warn(message)
  echohl WarningMsg
  echom a:message
  echohl None
  return 0
endfunction

" FIXME: Use in the files above
" call via :call Get_git_root()
" FIXME: If first result is `setenv:..` use second result
function! Get_git_root()
  let root = split(system('git rev-parse --show-toplevel'), '\n')[1]
  return v:shell_error ? '' : root
endfunction


map <leader>f :RepoFiles<cr>
map <leader>s :RipGrep<cr>


