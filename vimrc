"Use pathogen
execute pathogen#infect()

syntax on
set number
filetype indent plugin on
set modeline

" Set colors to 256
set t_Co=256

" Change Colorscheme
" colorscheme sourcerer
colorscheme up

" Special Highlighting
syn keyword myTodo contained TODO: FIXME:

" Compile and run Python
if has("win32")
  "Windows options here
	autocmd FileType python nnoremap <buffer> <F9> :exec '!py' shellescape(@%, 1)<cr>
else
  if has("unix")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
      "Mac options here
	autocmd FileType python nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>
    endif
  endif
endif
