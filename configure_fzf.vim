" Use ripgrep to search through all the project files
" In the current git repository
command! -bang -nargs=* RipGrep
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>).' '.Get_git_root('.'), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" List all the files in the current git project
" We have to use `[1] instead of 0 because on this system, fish shell has a 
" setenv: Too many arguments warning as the first line.
" FIXME: Only use [1] if [0] starts with "setenv"
command! -bang -nargs=* -complete=dir RepoFiles
  \ call fzf#vim#files(Get_git_root('.'),
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)


" ,f to search for files in this project / repo
map <leader>f :RepoFiles<cr>

" ,s to search within files in this repo / project
map <leader>s :RipGrep<cr>


