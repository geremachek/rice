	
" UI

set nocompatible
syntax off
filetype plugin indent off

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

function ForceTabs()
	set tabstop=8
	set noexpandtab
endfunction

inoremap <c-h> <Esc>:tabp<Enter>i
inoremap <c-l> <Esc>:tabn<Enter>i
inoremap <c-n> <Esc>:call NewTab()<Enter>
inoremap <c-o> <Esc>:call NewFile()<Enter>

" Other

inoremap <c-p> <Esc>pi<Right>
inoremap <c-u> <Esc>ui

set autoindent
set tabstop=8
set noexpandtab
set backspace=indent,eol,start
