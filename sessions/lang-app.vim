let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <C-Tab> 	
inoremap <silent> <Plug>ragtagXmlV ="&#".getchar().";"
inoremap <silent> <Plug>NERDCommenterInInsert  <BS>:call NERDComment(0, "insert")
imap <S-Down> V
imap <S-Up> V
imap <S-Left> v
imap <S-Right> v
imap <C-Up> mz:m-2`z
imap <C-Down> mz:m+`z
imap <C-Right> :tabn
imap <C-Left> :tabp
imap <M-Right> :bnext
imap <M-Left> :bprevious
vmap  "*yy
nnoremap <silent>  :call FindInNERDTree() 
vmap  <gv
nnoremap  <gv
onoremap  <gv
snoremap <silent> 	 i<Right>=TriggerSnippet()
map <NL> j
map  k
vmap  >gv
nnoremap  >gv
onoremap  >gv
map  :tabc
map  :tabnew
vmap <silent>  :u v
nmap <silent>  :u
omap <silent>  :u
snoremap  b<BS>
snoremap % b<BS>%
snoremap ' b<BS>'
nmap ,ca <Plug>NERDCommenterAltDelims
vmap ,cA <Plug>NERDCommenterAppend
nmap ,cA <Plug>NERDCommenterAppend
vmap ,c$ <Plug>NERDCommenterToEOL
nmap ,c$ <Plug>NERDCommenterToEOL
vmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
vmap ,cn <Plug>NERDCommenterNest
nmap ,cn <Plug>NERDCommenterNest
vmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
vmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
vmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
vmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
vmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
vmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
vmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
nmap ,cc <Plug>NERDCommenterComment
nmap <silent> ,t :CommandT
xmap <silent> ,e <Plug>CamelCaseMotion_e
xmap <silent> ,b <Plug>CamelCaseMotion_b
xmap <silent> ,w <Plug>CamelCaseMotion_w
omap <silent> ,e <Plug>CamelCaseMotion_e
omap <silent> ,b <Plug>CamelCaseMotion_b
omap <silent> ,w <Plug>CamelCaseMotion_w
nmap <silent> ,e <Plug>CamelCaseMotion_e
nmap <silent> ,b <Plug>CamelCaseMotion_b
nnoremap ,gp :GitPullRebase
nnoremap ,gc :GitCommit
nnoremap ,gA :GitAdd <cfile>
nnoremap ,ga :GitAdd
nnoremap ,gl :GitLog
nnoremap ,gs :GitStatus
nnoremap ,gD :GitDiff --cached
nnoremap ,gd :GitDiff
nmap ,a <Plug>ToggleAutoCloseMappings
nmap <silent> ,w <Plug>CamelCaseMotion_w
vmap ,cc <Plug>NERDCommenterComment
omap <silent> ,cc :call NERDComment(1, "toggle")
vnoremap / /\%>=line("'<")-1l\%<=line("'>")+1l
noremap < <gv
nmap <D-0> g^
nmap <D-6> g^
nmap <D-4> g$
nmap <D-k> gk
nmap <D-j> gj
vmap <D-0> g^
vmap <D-6> g^
vmap <D-4> g$
vmap <D-k> gk
vmap <D-j> gj
noremap > >gv
vnoremap ? ?\%>=line("'<")-1l\%<=line("'>")+1l
inoremap ï o
map H ^
map L $
noremap Q gq
xmap S <Plug>VSurround
snoremap U b<BS>U
nnoremap Y y$
nmap [xx <Plug>unimpairedLineXmlEncode
xmap [x <Plug>unimpairedXmlEncode
nmap [x <Plug>unimpairedXmlEncode
nmap [uu <Plug>unimpairedLineUrlEncode
xmap [u <Plug>unimpairedUrlEncode
nmap [u <Plug>unimpairedUrlEncode
nmap [yy <Plug>unimpairedLineStringEncode
xmap [y <Plug>unimpairedStringEncode
nmap [y <Plug>unimpairedStringEncode
xmap [e <Plug>unimpairedMoveUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
nmap [o <Plug>unimpairedOPrevious
nmap <silent> [Q <Plug>unimpairedQFirst
nmap <silent> [q <Plug>unimpairedQPrevious
nmap <silent> [L <Plug>unimpairedLFirst
nmap <silent> [l <Plug>unimpairedLPrevious
nmap <silent> [B <Plug>unimpairedBFirst
nmap <silent> [b <Plug>unimpairedBPrevious
nmap <silent> [A <Plug>unimpairedAFirst
nmap <silent> [a <Plug>unimpairedAPrevious
vmap [% [%m'gv``
snoremap \ b<BS>\
nnoremap \t :CommandT
nnoremap \b :BufExplorer
nmap <silent> \p :NERDTreeToggle
nmap <silent> \q <Plug>PeepOpen
nmap ]xx <Plug>unimpairedLineXmlDecode
xmap ]x <Plug>unimpairedXmlDecode
nmap ]x <Plug>unimpairedXmlDecode
nmap ]uu <Plug>unimpairedLineUrlDecode
xmap ]u <Plug>unimpairedUrlDecode
nmap ]u <Plug>unimpairedUrlDecode
nmap ]yy <Plug>unimpairedLineStringDecode
xmap ]y <Plug>unimpairedStringDecode
nmap ]y <Plug>unimpairedStringDecode
xmap ]e <Plug>unimpairedMoveDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
nmap ]o <Plug>unimpairedONext
nmap <silent> ]Q <Plug>unimpairedQLast
nmap <silent> ]q <Plug>unimpairedQNext
nmap <silent> ]L <Plug>unimpairedLLast
nmap <silent> ]l <Plug>unimpairedLNext
nmap <silent> ]B <Plug>unimpairedBLast
nmap <silent> ]b <Plug>unimpairedBNext
nmap <silent> ]A <Plug>unimpairedALast
nmap <silent> ]a <Plug>unimpairedANext
vmap ]% ]%m'gv``
snoremap ^ b<BS>^
snoremap ` b<BS>`
vmap a% [%v]%
nmap cs <Plug>Csurround
vmap <silent> c  :call NERDComment(1, "toggle")
nmap <silent> c  :call NERDComment(0, "toggle")
omap <silent> c  :call NERDComment(0, "toggle")
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
xmap <silent> i,e <Plug>CamelCaseMotion_ie
xmap <silent> i,b <Plug>CamelCaseMotion_ib
xmap <silent> i,w <Plug>CamelCaseMotion_iw
omap <silent> i,e <Plug>CamelCaseMotion_ie
omap <silent> i,b <Plug>CamelCaseMotion_ib
omap <silent> i,w <Plug>CamelCaseMotion_iw
xmap s <Plug>Vsurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
xnoremap <silent> <Plug>unimpairedMoveDown :exe 'norm m`'|exe '''<,''>move''>+'.v:count1``
xnoremap <silent> <Plug>unimpairedMoveUp :exe 'norm m`'|exe '''<,''>move--'.v:count1``
nnoremap <silent> <Plug>unimpairedMoveDown :exe 'norm m`'|exe 'move+'.v:count1``
nnoremap <silent> <Plug>unimpairedMoveUp :exe 'norm m`'|exe 'move--'.v:count1``
nnoremap <silent> <Plug>unimpairedBlankDown :put =repeat(nr2char(10),v:count)|'[-1
nnoremap <silent> <Plug>unimpairedBlankUp :put!=repeat(nr2char(10),v:count)|']+1
nmap <silent> <Plug>unimpairedQLast :exe "clast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQFirst :exe "cfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQNext :exe "cnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQPrevious :exe "cprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLLast :exe "llast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLFirst :exe "lfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLNext :exe "lnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLPrevious :exe "lprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBLast :exe "blast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBFirst :exe "bfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBNext :exe "bnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBPrevious :exe "bprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedALast :exe "last ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedAFirst :exe "first ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedANext :exe "next ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedAPrevious :exe "previous ".(v:count ? v:count : "")
nmap <silent> <Plug>NERDCommenterAppend :call NERDComment(0, "append")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment(0, "toEOL")
vnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(1, "uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(0, "uncomment")
vnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(1, "nested")
nnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(0, "nested")
vnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(1, "alignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(0, "alignBoth")
vnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(1, "alignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(0, "alignLeft")
vmap <silent> <Plug>NERDCommenterYank :call NERDComment(1, "yank")
nmap <silent> <Plug>NERDCommenterYank :call NERDComment(0, "yank")
vnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(1, "invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(0, "invert")
vnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(1, "sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(0, "sexy")
vnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(1, "minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(0, "minimal")
vnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(1, "toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(0, "toggle")
vnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(1, "norm")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(0, "norm")
vnoremap <Plug>CamelCaseMotion_ie :call camelcasemotion#InnerMotion('e',v:count1)
vnoremap <Plug>CamelCaseMotion_ib :call camelcasemotion#InnerMotion('b',v:count1)
vnoremap <Plug>CamelCaseMotion_iw :call camelcasemotion#InnerMotion('w',v:count1)
onoremap <Plug>CamelCaseMotion_ie :call camelcasemotion#InnerMotion('e',v:count1)
onoremap <Plug>CamelCaseMotion_ib :call camelcasemotion#InnerMotion('b',v:count1)
onoremap <Plug>CamelCaseMotion_iw :call camelcasemotion#InnerMotion('w',v:count1)
vnoremap <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'v')
vnoremap <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'v')
vnoremap <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'v')
onoremap <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'o')
onoremap <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'o')
onoremap <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'o')
nnoremap <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'n')
nnoremap <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'n')
nnoremap <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'n')
nmap <F8> :while !search( @/, "W") | bnext | endwhile
vmap <S-Right> <Right>
vmap <S-Left> <Left>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
nmap <S-Down> V
omap <S-Down> V
nmap <S-Up> V
omap <S-Up> V
nmap <S-Left> v
omap <S-Left> v
nmap <S-Right> v
omap <S-Right> v
vmap <C-Up> :m'<-2`>my`
vmap <C-Down> :m'>+`<my`>mzgv`yo`z
nmap <C-Up> mz:m-2`z
nmap <C-Down> mz:m+`z
nnoremap <F3> :set invpaste paste?
map <C-Right> :tabn
map <C-Left> :tabp
noremap <F2> :set list! list?
vmap <M-Right> :bnext
nmap <M-Right> :bnext
omap <M-Right> :bnext
vmap <M-Left> :bprevious
nmap <M-Left> :bprevious
omap <M-Left> :bprevious
nmap <BS> i<BS>
xmap <silent> <BS> dd
nnoremap <F5> :let @/='\<=expand("<cword>")\>':set hls
noremap <F4> :set hlsearch! hlsearch?
map <Up> gk
map <Down> gj
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =TriggerSnippet()
inoremap <NL> <Down>
inoremap  :nohls
inoremap <expr>  pumvisible() ? "\ \<BS>" : "\"
inoremap <silent> 	 =ShowAvailableSnips()
imap  <Plug>Isurround
imap <silent>  :u i
imap & <Plug>ragtagXmlV
imap % <Plug>ragtagUrlV
imap  :set paste:set nopastei
imap & <Plug>ragtagXmlEncode
imap % <Plug>ragtagUrlEncode
imap / </<Plug>ragtagHtmlComplete
imap H <Plug>ragtagHtmlComplete
imap  <Plug>AlwaysEnd
inoremap <silent> OC <Right>
imap <silent> ,cc :call NERDComment(1, "toggle")i
map ë :cprevious
map ê :cnext
map ñ :cclose
map ï :copen
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard=unnamed
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=l
set guioptions=aegimrLt
set helplang=en
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set linespace=4
set listchars=eol:¬,trail:���,tab:»-
set mouse=r
set pastetoggle=<F3>
set runtimepath=~/.vim,~/.vim/bundle/ack,~/.vim/bundle/bufexplorer,~/.vim/bundle/camelcasemotion,~/.vim/bundle/Command-T,~/.vim/bundle/CSApprox,~/.vim/bundle/cucumber,~/.vim/bundle/endwise,~/.vim/bundle/fugitive,~/.vim/bundle/git,~/.vim/bundle/haml,~/.vim/bundle/markdown,~/.vim/bundle/markdown-preview,~/.vim/bundle/matchit,~/.vim/bundle/NERD_commenter,~/.vim/bundle/NERD_tree,~/.vim/bundle/pastie,~/.vim/bundle/ragtag,~/.vim/bundle/rails,~/.vim/bundle/scss-syntax,~/.vim/bundle/snipmate,~/.vim/bundle/supertab,~/.vim/bundle/surround,~/.vim/bundle/syntastic,~/.vim/bundle/taglist_45,~/.vim/bundle/textile,~/.vim/bundle/unimpaired,~/.vim/bundle/vim-coffee-script,~/.vim/bundle/vim-ruby,~/.vim/bundle/vim-ruby-sinatra,~/.vim/bundle/vividchalk,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim72,/usr/local/share/vim/vimfiles/after,~/.vim/bundle/snipmate/after,~/.vim/after
set scrolloff=4
set shiftwidth=2
set showbreak=...
set showcmd
set sidescroll=1
set sidescrolloff=7
set smartcase
set smartindent
set softtabstop=2
set statusline=%f[%{GitBranch()}]%{exists('g:loaded_rvm')?rvm#statusline():''}%#warningmsg#%{&ff!='unix'?'['.&ff.']':''}%*%#warningmsg#%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}%*%h%y%r%m%#error#%{StatuslineTabWarning()}%*%{StatuslineTrailingSpaceWarning()}%{StatuslineLongLineWarning()}%#warningmsg#%{SyntasticStatuslineFlag()}%*%#error#%{&paste?'[paste]':''}%*%=%{StatuslineCurrentHighlight()}\ \ %c,%l/%L\ %P
set switchbuf=usetab
set tabstop=2
set wildignore=*.o,*.obj,*~
set wildmenu
set wildmode=list:longest
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/lang-app
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 app/controllers/application_controller.rb
args app/controllers/application_controller.rb
edit app/controllers/application_controller.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
cnoremap <buffer> <expr>  fugitive#buffer().rev()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=3
setlocal foldnestmax=3
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/projects/lang-app,~/projects/lang-app/app,~/projects/lang-app/app/models,~/projects/lang-app/app/controllers,~/projects/lang-app/app/helpers,~/projects/lang-app/config,~/projects/lang-app/lib,~/projects/lang-app/app/views,~/projects/lang-app/app/views/application,~/projects/lang-app/public,~/projects/lang-app/test,~/projects/lang-app/test/unit,~/projects/lang-app/test/functional,~/projects/lang-app/test/integration,~/projects/lang-app/spec,~/projects/lang-app/spec/models,~/projects/lang-app/spec/controllers,~/projects/lang-app/spec/helpers,~/projects/lang-app/spec/views,~/projects/lang-app/spec/lib,~/projects/lang-app/spec/requests,~/projects/lang-app/spec/integration,~/projects/lang-app/app/*,~/projects/lang-app/vendor,~/projects/lang-app/vendor/plugins/*/lib,~/projects/lang-app/vendor/plugins/*/test,~/projects/lang-app/vendor/rails/*/lib,~/projects/lang-app/vendor/rails/*/test,~/.rvm/rubies/ree-1.8.7-2010.02/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ree-1.8.7-2010.02/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ree-1.8.7-2010.02/lib/ruby/site_ruby,~/.rvm/rubies/ree-1.8.7-2010.02/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ree-1.8.7-2010.02/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ree-1.8.7-2010.02/lib/ruby/vendor_ruby,~/.rvm/rubies/ree-1.8.7-2010.02/lib/ruby/1.8,~/.rvm/rubies/ree-1.8.7-2010.02/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ree-1.8.7-2010.02/gems/RedCloth-4.2.3/ext,~/.rvm/gems/ree-1.8.7-2010.02/gems/RedCloth-4.2.3/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/RedCloth-4.2.3/lib/case_sensitive_require,~/.rvm/gems/ree-1.8.7-2010.02/gems/abstract-1.0.0/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/actionmailer-2.3.8/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/actionmailer-3.0.0.beta4/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/actionmailer-3.0.0.rc/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/actionpack-2.3.8/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/actionpack-3.0.0.beta4/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/actionpack-3.0.0.rc/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/activemodel-3.0.0.beta4/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/activemodel-3.0.0.rc/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/activerecord-2.3.8/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/activerecord-3.0.0.beta4/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/activerecord-3.0.0.rc/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/activeresource-2.3.8/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/activeresource-3.0.0.beta4/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/activeresource-3.0.0.rc/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/activesupport-2.3.8/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/activesupport-3.0.0.beta4/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/activesupport-3.0.0.rc/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/arel-0.4.0/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/bcrypt-ruby-2.1.2/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/bson-1.0.1/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/builder-2.1.2/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/bundler-0.9.26/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/bundler-1.0.0.rc.2/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/cancan-1.1.1/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/cancan-1.3.2/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/capybara-0.3.8/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/compass-0.10.0.rc4/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/compass-0.10.3/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/compass-960-plugin-0.9.13/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/compass-colors-0.3.1/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/cucumber-0.8.3/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/culerity-0.2.10/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/curb-0.7.7.1/ext,~/.rvm/gems/ree-1.8.7-2010.02/gems/curb-0.7.7.1/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/database_cleaner-0.5.2/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/devise-1.1.0/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/devise-1.1.rc0/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/dicks-0.03/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/diff-lcs-1.1.2/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/erubis-2.6.5/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/erubis-2.6.6/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/factory_girl-1.3.1/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/factory_girl-1.3.2/lib,~/.rvm/gems/ree-1.8.7-2010.02/gems/faker-0.3.
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%f[%{GitBranch()}]%{exists('g:loaded_rvm')?rvm#statusline():''}%#warningmsg#%{&ff!='unix'?'['.&ff.']':''}%*%#warningmsg#%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}%*%h%y%{rails#statusline()}%r%m%#error#%{StatuslineTabWarning()}%*%{StatuslineTrailingSpaceWarning()}%{StatuslineLongLineWarning()}%#warningmsg#%{SyntasticStatuslineFlag()}%*%#error#%{&paste?'[paste]':''}%*%=%{StatuslineCurrentHighlight()}\ \ %c,%l/%L\ %P
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=~/projects/lang-app/tmp/tags,./tags,tags,~/projects/lang-app/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 078l
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
