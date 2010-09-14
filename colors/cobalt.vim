" Vim Color Scheme
"
" Name: Cobalt
" Maintainer: David Terei<dave.terei@gmail.com>
" Version: 1.0
" Last Change: 28 October 2009
"
" Note: Based on the Cobalt color scheme for TextMate
"

set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="cobalt"

if has("gui_running")
  hi Normal       guifg=#ffffff           guibg=#002240
  hi NonText      guifg=#aaaaaa           guibg=#002240
  hi SpecialKey   guifg=#aaaaaa           guibg=#002240
else 
  hi Normal       guifg=#ffffff           guibg=#111110 
  hi NonText      guifg=#aaaaaa           guibg=#111111 
  hi SpecialKey   guifg=#aaaaaa           guibg=#111111 
endif

hi Cursor         guifg=#333333           guibg=#ffffff
hi CursorColum    guifg=#FFFFFF           guibg=red
hi CursorLine     guibg=#000d1a
hi CursorIM       guifg=#FFFFFF           guibg=#000000
hi Directory      guifg=#8F9D6A           guibg=#141414
hi ErrorMsg       guifg=#FFFFFF           guibg=#ff1111
hi VertSplit      guifg=#0065bf           guibg=#000000
hi Folded         guifg=#F9EE98           guibg=#494949
hi IncSearch      guifg=#000000           guibg=#CF6A4C
hi LineNr         guifg=#0065bf           guibg=#000000
hi ModeMsg        guifg=#FFFFFF           guibg=#000d1a
hi MoreMsg        guifg=#FFFFFF           guibg=#3ad900
hi Question       guifg=#FFFFFF           guibg=#3ad900
hi Search         guifg=#001b33           guibg=#3ad900
hi StatusLineNC   guibg=#000d1a           guifg=#0088ff
hi StatusLine     guifg=#000d1a           guibg=#0088ff
hi Title          guifg=#8B98AB           guibg=#0E2231
hi Visual         guibg=#0065bf           guifg=#FFFFFF 
hi WarningMsg     guifg=#FFFFFF           guibg=red
hi WildMenu       guifg=#FFFFFF           guibg=white


"Syntax highlight groups

hi Comment        guifg=#0088ff
hi Constant       guifg=#ff0044
hi String         guifg=#3AD900
hi Character      guifg=#E9C062
hi Number         guifg=#ff0044 
hi Boolean        guifg=#ff0044 
hi Float          guifg=#F05A73
hi Identifier     guifg=#ffffff "term=bold gui=bold
hi Function       guifg=#f2dd00 term=bold gui=bold
hi Statement      guifg=#FF9D00
hi Conditional    guifg=#FF9D00
hi Repeat         guifg=#FF9D00
hi Label          guifg=#ff0044 
hi Operator       guifg=#ff9d00 term=bold gui=bold
hi Keyword        guifg=#ff9d00 
hi Exception      guifg=red
hi PreProc        guifg=#FF9D00
hi Include        guifg=#ff9d00 term=bold gui=bold 
hi Define         guifg=#FF9D00 term=bold gui=bold
hi Macro          guifg=#9B703F
hi PreCondit      guifg=#3AD900
hi Type           guifg=#80FFBB 
hi StorageClass   guifg=#3AD900
hi Structure      guifg=#ffee80 term=bold gui=bold
hi Special        guifg=#F2DD00
hi SpecialChar    guifg=white term=bold gui=bold
hi Tag            guifg=#ff0044 term=bold gui=bold
hi Delimiter      guifg=#FFFFFF 
hi SpecialComment guifg=#3AD900
hi Debug          guifg=red
hi Underlined     guifg=#Cf6A4C
hi Ignore         guifg=#666666
hi Error          guifg=#FFFFFF      guibg=#FF1E00
hi Todo           guifg=#7587A6      guibg=#0E2231
hi Typedef        guifg=#7587A6      guibg=#0E2231
hi Pmenu          guibg=#000d1a      guifg=white

hi PmenuSel       guibg=#3ad900      guifg=white term=bold gui=bold
hi PmenuSbar      guibg=#ff0044
hi PmenuThumb     guifg=#8F9D6A
hi VertSplit      guifg=#0065bf           guibg=#000000
