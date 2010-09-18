"necessary on some Linux distros for pathogen to properly load bundles
filetype off
set t_Co=256
"load pathogen managed plugins
call pathogen#runtime_append_all_bundles()

"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

set number      "add line numbers
set showbreak=...
set wrap linebreak nolist

"mapping for command key to map navigation thru display lines instead
"of just numbered lines
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^

"add some line space for easy reading
set linespace=4

"disable visual bell
set visualbell t_vb=

"try to make possible to navigate within lines of wrapped lines
nmap <Down> gj
nmap <Up> gk
set fo=l

"statusline setup
set statusline=%f       "tail of the filename

"Git
set statusline+=[%{GitBranch()}]

"RVM
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"Display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h      "help file flag
set statusline+=%y      "filetype
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag

"display a warning if &et is wrong, or we have mixed-indenting
set statusline+=%#error#
set statusline+=%{StatuslineTabWarning()}
set statusline+=%*
set statusline+=%{StatuslineTrailingSpaceWarning()}
set statusline+=%{StatuslineLongLineWarning()}
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

set statusline+=%=      "left/right separator

set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight

set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

"turn off needless toolbar on gvim/mvim
set guioptions-=T

"recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

"return '[\s]' if trailing white space is detected
"return '' otherwise
function! StatuslineTrailingSpaceWarning()
    if !exists("b:statusline_trailing_space_warning")
        if search('\s\+$', 'nw') != 0
            let b:statusline_trailing_space_warning = '[\s]'
        else
            let b:statusline_trailing_space_warning = ''
        endif
    endif
    return b:statusline_trailing_space_warning
endfunction


"return the syntax highlight group under the cursor ''
function! StatuslineCurrentHighlight()
    let name = synIDattr(synID(line('.'),col('.'),1),'name')
    if name == ''
        return ''
    else
        return '[' . name . ']'
    endif
endfunction

"recalculate the tab warning flag when idle and after writing
autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning

"return '[&et]' if &et is set wrong
"return '[mixed-indenting]' if spaces and tabs are used to indent
"return an empty string if everything is fine
function! StatuslineTabWarning()
    if !exists("b:statusline_tab_warning")
        let tabs = search('^\t', 'nw') != 0
        let spaces = search('^ ', 'nw') != 0

        if tabs && spaces
            let b:statusline_tab_warning =  '[mixed-indenting]'
        elseif (spaces && !&et) || (tabs && &et)
            let b:statusline_tab_warning = '[&et]'
        else
            let b:statusline_tab_warning = ''
        endif
    endif
    return b:statusline_tab_warning
endfunction

"recalculate the long line warning when idle and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_long_line_warning

"return a warning for "long lines" where "long" is either &textwidth or 80 (if
"no &textwidth is set)
"
"return '' if no long lines
"return '[#x,my,$z] if long lines are found, were x is the number of long
"lines, y is the median length of the long lines and z is the length of the
"longest line
function! StatuslineLongLineWarning()
    if !exists("b:statusline_long_line_warning")
        let long_line_lens = s:LongLines()

        if len(long_line_lens) > 0
            let b:statusline_long_line_warning = "[" .
                        \ '#' . len(long_line_lens) . "," .
                        \ 'm' . s:Median(long_line_lens) . "," .
                        \ '$' . max(long_line_lens) . "]"
        else
            let b:statusline_long_line_warning = ""
        endif
    endif
    return b:statusline_long_line_warning
endfunction

"return a list containing the lengths of the long lines in this buffer
function! s:LongLines()
    let threshold = (&tw ? &tw : 80)
    let spaces = repeat(" ", &ts)

    let long_line_lens = []

    let i = 1
    while i <= line("$")
        let len = strlen(substitute(getline(i), '\t', spaces, 'g'))
        if len > threshold
            call add(long_line_lens, len)
        endif
        let i += 1
    endwhile

    return long_line_lens
endfunction

"find the median of the given array of numbers
function! s:Median(nums)
    let nums = sort(a:nums)
    let l = len(nums)

    if l % 2 == 1
        let i = (l-1) / 2
        return nums[i]
    else
        return (nums[l/2] + nums[(l/2)-1]) / 2
    endif
endfunction

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

"display tabs and trailing spaces
set list
set listchars=tab:\ \ ,extends:>,precedes:<
" disabling list because it interferes with soft wrap

set formatoptions-=o "dont continue comments when pushing o/O

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"some stuff to get the mouse going in term
set mouse=a
set mouse=r
set ttymouse=xterm2

"hide buffers when not displayed
set hidden

"Command-T configuration
let g:CommandTMaxHeight=10
let g:CommandTMatchWindowAtTop=1

"if has("gui_running")
    ""tell the term has 256 colors
    "set t_Co=256

    "colorscheme molokai
    "set guitablabel=%M%t
    "set lines=40
    "set columns=115

    "if has("gui_gnome")
        "set term=gnome-256color
        "colorscheme molokai
        "set guifont=Inconsolata\ Medium\ 12
    "endif

    "if has("gui_mac") || has("gui_macvim")
        "set guifont=Menlo:h14
        "" key binding for Command-T to behave properly
        "" uncomment to replace the Mac Command-T key to Command-T plugin
        ""macmenu &File.New\ Tab key=<nop>
        ""map <D-t> :CommandT<CR>
        "" make Mac's Option key behave as the Meta key
        "set invmmta
        "try
          "set transparency=5
        "catch
        "endtry
    "endif

    "if has("gui_win32") || has("gui_win32s")
        "set guifont=Consolas:h12
        "set enc=utf-8
    "endif
"else
    ""dont load csapprox if there is no gui support - silences an annoying warning
    "colorscheme molokai
"endif

if has("gui_running")
  colorscheme cobalt
  set guifont="Bitstream\ Vera\ Sans\ Mono\ 12"
else
  colorscheme molokai
endif
" PeepOpen uses <Leader>p as well so you will need to redefine it so something
" else in your ~/.vimrc file, such as:
nmap <silent> <Leader>q <Plug>PeepOpen

silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :call FindInNERDTree()<CR> 

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"map to bufexplorer
nnoremap <leader>b :BufExplorer<cr>

"map to CommandT TextMate style finder
nnoremap <leader>t :CommandT<CR>

"map Q to something useful
noremap Q gq

"make Y consistent with C and D
nnoremap Y y$

"bindings for ragtag
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1

"mark syntax errors with :signs
let g:syntastic_enable_signs=1

"key mapping for vimgrep result navigation
map <A-o> :copen<CR>
map <A-q> :cclose<CR>
map <A-j> :cnext<CR>
map <A-k> :cprevious<CR>

"snipmate setup
try
  source ~/.vim/snippets/support_functions.vim
catch
  source ~/vimfiles/snippets/support_functions.vim
endtry
autocmd vimenter * call s:SetupSnippets()
function! s:SetupSnippets()

    "if we're in a rails env then read in the rails snippets
    if filereadable("./config/environment.rb")
        call ExtractSnips("~/.vim/snippets/ruby-rails", "ruby")
        call ExtractSnips("~/.vim/snippets/eruby-rails", "eruby")
    endif

    call ExtractSnips("~/.vim/snippets/html", "eruby")
    call ExtractSnips("~/.vim/snippets/html", "xhtml")
    call ExtractSnips("~/.vim/snippets/html", "php")
endfunction

"visual search mappings
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>


"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction

"define :HighlightLongLines command to highlight the offending parts of
"lines that are longer than the specified length (defaulting to 80)
command! -nargs=? HighlightLongLines call s:HighlightLongLines('<args>')
function! s:HighlightLongLines(width)
    let targetWidth = a:width != '' ? a:width : 79
    if targetWidth > 0
        exec 'match Todo /\%>' . (targetWidth) . 'v/'
    else
        echomsg "Usage: HighlightLongLines [natural number]"
    endif
endfunction

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let ScreenShot = {'Icon':0, 'Credits':0, 'force_background':'#FFFFFF'} 

noremap <F4> :set hlsearch! hlsearch?<CR>
nnoremap <F5> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
syntax match NonText "^\ +"
"autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
"au BufAdd,BufNewFile,BufRead * nested tab sball


vmap <silent> <backspace> dd
map  <silent> <c-u> <esc>:u<cr>
vmap <silent> <c-u> <esc>:u <cr><cr>v
imap <silent> <c-u> <esc>:u <cr><cr>i

command W w !sudo tee % >/dev/null
command WQ wq


" easier to reach, overrides TOP and BOTTOM of screen
map H ^
map L $

" display line up/down (not actual)
map <up> gk
map <down> gj

" search next/previous -- center in page
nmap n nzz
nmap N Nzz
nmap <backspace> i<backspace>

imap <a-left> <esc>:bprevious<cr>
map <a-left> :bprevious<cr>
vmap <a-left> <esc>:bprevious<cr>


imap <a-right> <esc>:bnext<cr>
map <a-right> :bnext<cr>
vmap <a-right> <esc>:bnext<cr>

set clipboard=unnamed

command! -nargs=* -complete=file -bang Rename :call Rename("<args>", "<bang>")

function! Rename(name, bang)
	let l:curfile = expand("%:p")
	let v:errmsg = ""
	silent! exe "saveas" . a:bang . " " . a:name
	if v:errmsg =~# '^$\|^E329'
		if expand("%:p") !=# l:curfile && filewritable(expand("%:p"))
			silent exe "bwipe! " . l:curfile
			if delete(l:curfile)
				echoerr "Could not delete " . l:curfile
			endif
		endif
	else
		echoerr v:errmsg
	endif
endfunction

set nolist
noremap <F2> :set list! list?<CR>
set listchars=eol:¬,trail:•,tab:»-
"tabs
map <C-t> :tabnew<cr>
imap <c-left> <Esc>:tabp<cr>
imap <c-right> <Esc>:tabn<cr>
map <c-left> :tabp<cr>
map <c-right> :tabn<cr>
map <c-q> :tabc<cr>
"nerdcommenter
noremap <silent>,cc <esc>:call NERDComment(1, "toggle")<cr>
map <silent>,cc <esc>:call NERDComment(1, "toggle")<cr>
vmap <silent>,cc <esc>:call NERDComment(1, "toggle")<cr>
imap <silent>,cc <esc>:call NERDComment(0, "toggle")<cr>i
map <silent>c<space> <esc>:call NERDComment(0, "toggle")<cr>
vmap <silent>c<space> <esc>:call NERDComment(1, "toggle")<cr>

noremap <F4> :set hlsearch! hlsearch?<CR>
nnoremap <F5> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
au BufRead,BufNewFile *.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.sass set ft=css syntax=sass
au BufRead,BufNewFile *.scss set ft=css syntax=sass
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

nnoremap <f3> :set invpaste paste?<cr>
set pastetoggle=<f3>
set showmode

""
""MY CUSTOM COMMANDS
""
"Set to auto read when a file is changed from the outside
set autoread
"Set mapleader
let mapleader = ","
let g:mapleader = ","
"Set 4 lines to the curors - when moving vertical..
set so=4
set magic
"No sound on errors.
set noerrorbells
set novisualbell
set switchbuf=usetab
set tabstop=2
set encoding=utf8
set autoindent
set smartindent
set ignorecase
set smartcase
set cursorline
set nocursorcolumn

"Move a line of text using control

imap <c-down> <esc>mz:m+<cr>`z
imap <c-up> <esc>mz:m-2<cr>`z
nmap <c-down> mz:m+<cr>`z
nmap <c-up> mz:m-2<cr>`z
vmap <c-down> :m'>+<cr>`<my`>mzgv`yo`z
vmap <c-up> :m'<-2<cr>`>my`

noremap <c-h> <gv
noremap <c-l> >gv
vmap <c-h> <gv
vmap <c-l> >gv
"Shift + arrows make a selection like in traditional editors
imap <s-right> <esc>v
imap <s-left> <esc>v
map <s-right> <esc>v
map <s-left> <esc>v

imap <s-up> <esc>V
imap <s-down> <esc>V
map <s-up> <esc>V
map <s-down> <esc>V

vmap <s-down> <down>
vmap <s-up> <up>
vmap <s-left> <left>
vmap <s-right> <right>
"" nie trać zaznaczenia prz < i >
noremap < <gv
noremap > >gv

" wyszukiwanie TYLKO w zaznaczonym fragmencie:
vnoremap	/				<ESC>/\%><C-R>=line("'<")-1<CR>l\%<<C-R>=line("'>")+1<CR>l
vnoremap	?				<ESC>?\%><C-R>=line("'<")-1<CR>l\%<<C-R>=line("'>")+1<CR>l

" szukanie we wszystkich plikach:
nmap		<F8>				:while !search( @/, "W") \| bnext \| endwhile<CR>



let g:ctags_regenerate = 0 
let generate_tags = 1
set wrapscan


au BufRead,BufNewFile *.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.sass set ft=css syntax=sass
au BufRead,BufNewFile *.scss set ft=css syntax=sass

"something normal for copy paste"
"nmap <C-V> "+p
imap <C-V> <ESC>:set paste<CR><C-V>:set nopaste<CR>i
vmap <C-C> "*yy

"sessions"
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
map <a-q> :mksession! ~/.vim/.session <cr>
map <a-s> :source ~/.vim/.session <cr>

"go to given tab
imap <a-1> <Esc>1gt
imap <a-2> <Esc>2gt
imap <a-3> <Esc>3gt
imap <a-4> <Esc>4gt
imap <a-5> <Esc>5gt
imap <a-6> <Esc>6gt
imap <a-7> <Esc>7gt
imap <a-8> <Esc>8gt
imap <a-9> <Esc>9gt


vmap <a-1> <Esc>1gt
vmap <a-2> <Esc>2gt
vmap <a-3> <Esc>3gt
vmap <a-4> <Esc>4gt
vmap <a-5> <Esc>5gt
vmap <a-6> <Esc>6gt
vmap <a-7> <Esc>7gt
vmap <a-8> <Esc>8gt
vmap <a-9> <Esc>9gt

map <a-1> <Esc>1gt
map <a-2> <Esc>2gt
map <a-3> <Esc>3gt
map <a-4> <Esc>4gt
map <a-5> <Esc>5gt
map <a-6> <Esc>6gt
map <a-7> <Esc>7gt
map <a-8> <Esc>8gt
map <a-9> <Esc>9gt
map <a-w> <Esc>:wq<cr>
imap <a-w> <Esc>:wq<cr>
vmap <a-w> <Esc>:wq<cr>
