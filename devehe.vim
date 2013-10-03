" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "devehe"

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi DiffAdd    ctermbg=LightBlue    guibg=LightBlue
hi DiffChange ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete ctermfg=Blue	   ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan
hi DiffText   ctermbg=Red	   cterm=bold gui=bold guibg=Red
hi Directory  ctermfg=DarkBlue	   guifg=Blue
hi ErrorMsg   ctermfg=White	   ctermbg=DarkRed  guibg=Red	    guifg=White
hi FoldColumn ctermfg=DarkBlue	   ctermbg=Grey     guibg=Grey	    guifg=DarkBlue
hi Folded     ctermbg=Grey	   ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi IncSearch  cterm=reverse	   gui=reverse
hi LineNr     ctermfg=Brown	   guifg=Brown
hi ModeMsg    cterm=bold	   gui=bold
hi MoreMsg    ctermfg=DarkGreen    gui=bold guifg=SeaGreen
hi NonText    ctermfg=Blue	   gui=bold guifg=gray guibg=white
hi Pmenu      guibg=LightBlue
hi PmenuSel   ctermfg=White	   ctermbg=DarkBlue  guifg=White  guibg=DarkBlue
hi Question   ctermfg=DarkGreen    gui=bold guifg=SeaGreen
hi Search     ctermfg=NONE	   ctermbg=Yellow guibg=Yellow guifg=NONE
hi SpecialKey ctermfg=DarkBlue	   guifg=Blue
hi StatusLine cterm=bold	   ctermbg=blue ctermfg=yellow guibg=gold guifg=blue
hi StatusLineNC	cterm=bold	   ctermbg=blue ctermfg=black  guibg=gold guifg=blue
hi Title      ctermfg=DarkMagenta  gui=bold guifg=Magenta
hi VertSplit  cterm=reverse	   gui=reverse
hi Visual     ctermbg=NONE	   cterm=reverse gui=reverse guifg=Grey guibg=fg
hi VisualNOS  cterm=underline,bold gui=underline,bold
hi WarningMsg ctermfg=DarkRed	   guifg=Red
hi WildMenu   ctermfg=Black	   ctermbg=Yellow    guibg=Yellow guifg=Black

" Console
"highlight Normal     ctermfg=LightGrey	ctermbg=Black
highlight Normal     ctermfg=LightGrey	ctermbg=NONE
highlight Search     ctermfg=Black	ctermbg=Red	cterm=NONE
highlight Visual					cterm=reverse
highlight Cursor     ctermfg=Black	ctermbg=Green	cterm=bold
highlight Special    ctermfg=Brown
highlight Comment    ctermfg=Blue
highlight StatusLine ctermfg=blue	ctermbg=white
highlight Statement  ctermfg=Yellow			cterm=NONE
highlight Type						cterm=NONE

hi LineNr		ctermfg=White
" Magenta Red Green Blue Yellow Cyan Grey Brown
" Black White
" prefix: Dark Light

" syntax highlighting
hi Comment    cterm=NONE ctermfg=DarkCyan     gui=NONE guifg=red2
hi Constant   cterm=NONE ctermfg=DarkGreen   gui=NONE guifg=green3
hi Identifier cterm=NONE ctermfg=Blue    gui=NONE guifg=cyan4
hi PreProc    cterm=NONE ctermfg=DarkYellow gui=NONE guifg=magenta3
hi Special    cterm=NONE ctermfg=Red    gui=NONE guifg=deeppink

hi Statement  cterm=bold ctermfg=Red ctermbg=NONE

hi Type	      cterm=NONE ctermfg=DarkRed ctermbg=NONE
hi String     cterm=NONE ctermfg=DarkGreen ctermbg=NONE
hi Number     cterm=NONE ctermfg=Yellow ctermbg=NONE

hi Search     cterm=NONE ctermfg=White ctermbg=Black

"hi Function   term=bold ctermfg=White
"hi Operator				ctermfg=Red
hi link Function Statement
hi link Operator Number

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
"hi link String	Constant
"hi link Character	Constant
"hi link Number	Constant
"hi link Boolean	Constant
"hi link Float		Number
"hi link Conditional	Repeat
"hi link Label		Statement
"hi link Keyword	Statement
"hi link Exception	Statement
"hi link Include	PreProc
"hi link Define	PreProc
"hi link Macro		PreProc
"hi link PreCondit	PreProc
"hi link StorageClass	Type
"hi link Structure	Type
"hi link Typedef	Type
"hi link Tag		Special
"hi link SpecialChar	Special
"hi link Delimiter	Special
"hi link SpecialComment Special
"hi link Debug		Special

