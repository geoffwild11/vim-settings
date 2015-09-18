syntax on
set number
filetype indent plugin on
set modeline

" Change Colorscheme
" colorscheme sourcerer
colorscheme up

" Compile and run Python
autocmd FileType python nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>
