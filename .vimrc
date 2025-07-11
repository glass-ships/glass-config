"" vim configuration

let g:is_posix = 1
set nocompatible
set history=50

" Use UTF-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1
setglobal fileencoding=utf-8

" Enable the mouse
set mouse=a

" Propagate the clipboard (uncomment one of the versions)
""" 1. To macOS
" set clipboard=unnamed
"
""" 2. To a local machine via SSH
" function! PropagatePasteBufferViaSSH()
"    let @n=@
"    call system('nc -N localhost 2224', @n)
"    echo "Copied and propogated"
" endfunction
" function! PopulatePasteBufferFromSSH()
"    let @" = system('nc localhost 2225')
"    echo "Buffer populated"
" endfunction
" nnoremap yy yy:call PropagatePasteBufferViaSSH()<cr>
" vnoremap y y:call PropagatePasteBufferViaSSH()<cr>
" nnoremap è :call PropagatePasteBufferViaSSH()<cr>
" nnoremap é :call PopulatePasteBufferFromSSH()<cr>

" Theme and coloration
set t_Co=256
colorscheme evening

set number
set showmode
set ruler

" Activate syntax coloring and indentation
filetype plugin indent on
syntax on

" Indentation settings
set smartindent
set expandtab       " Use spaces for tabs
set tabstop=4
set shiftwidth=4

set backspace=indent,eol,start

" Enable modelines
set modeline
set modelines=5

" Use <C-l> to center the cursor
noremap <C-l> z.
