
"set nocompatible
set nocp

"colorscheme dev
colo devehe
syntax on


" Tab related
set ts=4
"set shiftwidth=4
set sw=4
"set smarttab
"set et
"set ambiwidth=double

" Format related
"set tw=78
"set lbr
"set fo+=mB

" Indent related
set cin
set ai
set cino=:0g0t0(susj1

" Editing related
"set backspace=indent,eol,start
"set whichwrap=b,s,<,>,[,]
"set mouse=a
"set selectmode=
"set mousemodel=popup
"set keymodel=
"set selection=inclusive

" Misc
"set wildmenu
"set spell


""""""""""""""""""""""""""""""""""""""""
" find tags auto change dir for ctags
set tags=tags;
set autochdir
""""""""""""""""""""""""""""""""""""""""
"set autoindent
set nobackup
"set showmatch
"set formatoptions+=mM
"set fileencodings=ucs-bom,utf-8,gbk
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P

" Encoding related
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" File type related
filetype plugin indent on


"if has('mouse')
"  set mouse=a
"endif

""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
"if MySys() == "windows"                "设定windows系统中ctags程序的位置
"let Tlist_Ctags_Cmd = 'ctags'
"elseif MySys() == "linux"              "设定linux系统中ctags程序的位置
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"endif
"let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
"let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口

"""""""""""""""""""""""""""""""""""""
" map key
"""""""""""""""""""""""""""""""""""""
"map <silent> <F9> :TlistToggle<cr>
"nmap <F9> <F9> :TlistOpen<cr>
"nmap <F10> <F10> :Tlist<cr>
"nmap <F8> <F8> :TlistClose<cr>
nmap <F9> <F9> <esc>:Tlist<cr>

" Key mappings to ease browsing long lines
noremap  <C-J>       gj
noremap  <C-K>       gk
noremap  <Down>      gj
noremap  <Up>        gk
inoremap <Down> <C-O>gj
inoremap <Up>   <C-O>gk

" Key mappings for quick arithmetic inside Vim
nnoremap <silent> <Leader>ma yypV:!calcu '<C-R>"'<CR>k$
vnoremap <silent> <Leader>ma yo<ESC>pV:!calcu '<C-R>"'<CR>k$
nnoremap <silent> <Leader>mr yyV:!calcu '<C-R>"'<CR>$
vnoremap <silent> <Leader>mr ygvmaomb:r !calcu '<C-R>"'<CR>"ay$dd`bv`a"ap

" Key mapping to stop the search highlight
nmap <silent> <F2>      :nohlsearch<CR>
imap <silent> <F2> <C-O>:nohlsearch<CR>

" Key mapping for the taglist.vim plugin
"""nmap <F9>      :Tlist<CR> [del.hehg]
"""imap <F9> <C-O>:Tlist<CR>

" Key mappings for the quickfix commands
"nmap <F11> :cn<CR>
"nmap <F12> :cp<CR>


"========================================================
" my hot-key
"========================================================
"iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
"iab xdate <c-r>=strftime("%Y-%m-%d %H:%M:%S")<C-I> 

nmap <F8>		<esc>$a // [add.hehg.<c-r>=strftime("%Y-%m-%d_%H:%M:%S")<cr>]<esc>
imap <F8>		<esc>$a // [add.hehg.<c-r>=strftime("%Y-%m-%d_%H:%M:%S")<cr>]<esc>
"imap <F8>		// [add.hehg.<c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>]
"imap <F8>		// [add.hehg.<c-r>=strftime("%Y-%m-%d %H:%M:%S")<c-i><cr>]
nmap <F7>		<esc>$a // [chg.hehg.<c-r>=strftime("%Y-%m-%d_%H:%M:%S")<cr>]<esc>
imap <F7>		<esc>$a // [chg.hehg.<c-r>=strftime("%Y-%m-%d_%H:%M:%S")<cr>]<esc>
nmap <F6>		<esc>$a // [del.hehg.<c-r>=strftime("%Y-%m-%d_%H:%M:%S")<cr>]<esc>
imap <F6>		<esc>$a // [del.hehg.<c-r>=strftime("%Y-%m-%d_%H:%M:%S")<cr>]<esc>
"imap <F12>		<?php?> <Esc>1Fpa<Enter><Enter><Esc>ki
imap <F5>		<esc>O// [important.hehg (<c-r>=strftime("%Y-%m-%d_%H:%M:%S")<cr>)] ******<esc>jjO// [important.hehg (<c-r>=strftime("%Y-%m-%d_%H:%M:%S")<cr>)] ******<esc>
nmap <F5>		<esc>O// [important.hehg (<c-r>=strftime("%Y-%m-%d_%H:%M:%S")<cr>)] ******<esc>jjO// [important.hehg (<c-r>=strftime("%Y-%m-%d_%H:%M:%S")<cr>)] ******<esc>

imap <F4>		<esc>0i//<esc>
nmap <F4>		<esc>0i//<esc>

