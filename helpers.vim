" FIXME: Use in the fzf file above
" call via :call Get_git_root()
" FIXME: If first result is `setenv:..` use second result
function! Get_git_root(fallback)
  let root = split(system('git rev-parse --show-toplevel'), '\n')[1]
  return v:shell_error ? a:fallback : root
endfunction

" Convenience to print warning.
" FIXME: Move to another file for helper functions
function! s:warn(message)
  echohl WarningMsg
  echom a:message
  echohl None
  return 0
endfunction
