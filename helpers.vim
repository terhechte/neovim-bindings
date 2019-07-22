" call via :call Get_git_root()
function! Get_git_root(fallback)
  try
    let root = split(system('git rev-parse --show-toplevel'), '\n')[1]
    return v:shell_error ? a:fallback : root
  catch
    let root = split(system('git rev-parse --show-toplevel'), '\n')[0]
    return v:shell_error ? a:fallback : root
  endtry
endfunction

" Convenience to print warning.
function! s:warn(message)
  echohl WarningMsg
  echom a:message
  echohl None
  return 0
endfunction
