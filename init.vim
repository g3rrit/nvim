call plug#begin()
" AIRLINE
Plug 'vim-airline/vim-airline'
call plug#end()
  
syntax on
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set noautoindent

let mapleader = " "

nnoremap <Leader><space> :noh<cr>

" CUSTOM COMMANDS

" refractor this
function! SetIlvl4()
  set tabstop=4 shiftwidth=4
endfunction 

function! SetIlvl2()
  set tabstop=2 shiftwidth=2
endfunction 

command Ilvl4 :call SetIlvl4()
command Ilvl2 :call SetIlvl2()

" COMMENT

function! HsComment()
  call append(line("."), "--------------------------------------------------------")
  call append(line("."), "--")
  call append(line("."), "--------------------------------------------------------")
endfunction

function! CComment()
  call append(line("."), "//--------------------------------------------------------")
  call append(line("."), "// ")
  call append(line("."), "//--------------------------------------------------------")
endfunction

command HsC :call HsComment()
command CC :call CComment()
