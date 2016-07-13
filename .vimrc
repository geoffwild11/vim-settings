"Use pathogen
execute pathogen#infect()

" Enable backspace to function as expected
set backspace=indent,eol,start

"Map <ESC> to the key sequence jj
imap jj <Esc>

"Basic settings for Vim
syntax on
set number
filetype indent plugin on
set modeline
set hlsearch
set tabstop=4
"set expandtab
set shiftwidth=4
set softtabstop=4

"Font
set guifont=Consolas:h10:cANSI

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
	autocmd FileType python nnoremap <buffer> <F9> :exec '!py3' shellescape(@%, 1)<cr>
	let g:syntastic_python_python_exec = 'C:\Python34\python.exe'
	noremap <C-j> :%!py -m json.tool<cr>

else
  if has("unix")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
      "Mac options here
	autocmd FileType python nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>
	" Syntastic Python 3 location
	let g:syntastic_python_python_exec = '/Library/Frameworks/Python.framework/Versions/3.4/bin/python3'
	noremap <C-j> :%!python -m json.tool<cr>
    endif
  endif
endif

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_use_codec = 1


