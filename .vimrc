
" Plug

call plug#begin('~/.vim/plugged')
Plug 'PotatoesMaster/i3-vim-syntax'
call plug#end()

" UI

set number relativenumber
set nocompatible
syntax on
filetype plugin indent on

" Saving

inoremap <c-q> <Esc>:wq<Enter>i<Right>
inoremap <c-s> <Esc>:w<Enter>i<Right>
inoremap <c-e> <Esc>:q!<Enter>i<Right>

" Movement

inoremap <c-d> <Esc>ddi<Right>

" Tabs

function NewFile()
	let file = input("File: ")
	execute ':tabnew '. file
	call inputrestore()
	startinsert
endfunction

function NewTab()
	tabnew
	startinsert
endfunction

inoremap <c-Left> <Esc>:tabp<Enter>i
inoremap <c-Right> <Esc>:tabn<Enter>i
inoremap <c-n> <Esc>:call NewTab()<Enter>
inoremap <c-o> <Esc>:call NewFile()<Enter>

" Other

inoremap <c-p> <Esc>pi<Right>
inoremap <c-u> <Esc>ui
inoremap <c-t> <Esc>:set expandtab<Enter>i

set tabstop=8
