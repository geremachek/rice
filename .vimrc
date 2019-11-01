
" Plug

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'junegunn/limelight.vim'
call plug#end()

" UI

set number relativenumber
set nocompatible
syntax on
filetype plugin on

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
inoremap <c-g> <Esc>:Goyo 95%x95% <Enter>i<Right>
let g:limelight_conceal_ctermfg = 8
