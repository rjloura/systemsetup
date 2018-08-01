filetype plugin on
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2 et

setlocal ts=4 sts=4 sw=4

syn on
set autoindent
set smartindent

imap <F10> <html><CR>   <head></head><CR>       <script></script><CR>   <body></body><CR></html>
map <F10> i<html><CR>   <head></head><CR>       <script></script><CR>   <body></body><CR></html>
imap <F8> #include <stdio.h><CR>#include <stdlib.h><CR>#include <strings.h><CR><CR>int main(int argc, char *argv[]) {<CR><CR>   return 0;<CR>}<ESC>2ki
map <F8> i#include <stdio.h><CR>#include <stdlib.h><CR>#include <strings.h><CR><CR>int main(int argc, char *argv[]) {<CR><CR>   return 0;<CR>}<ESC>2ki

imap <F9> class MyClass {<CR>   public static void main (String[] args) {<CR>   <CR>    }<CR>}<ESC>2k$a
map <F9> iclass MyClass {<CR>   public static void main (String[] args) {<CR>   <CR>    }<CR>}<ESC>2k$a

function Noautoindent()
	set noautoindent
	set nosmartindent
endfunction

function Inshtml()
	r~/.vim/templates/html.html
endfunction

function Insjquery()
	r~/.vim/templates/jquery.js
endfunction

function Inshighcharts()
	r~/.vim/templates/highcharts.html
endfunction


map <S-F> :execute Noautoindent()<CR>
