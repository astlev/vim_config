" DISABLE COMPABILITY WITH OLDER VERSIONS AND STANDART COPY PASTE:
set nocompatible

" OPEN NEW TAB AND SEARCH FILE:
map <C-t> :tabnew<CR><C-p>

" OPEN EACH FILE IN NEW TAB
:au BufAdd,BufNewFile * nested tab sball

nnoremap ; :

vnoremap x "+x
vnoremap y "+y
nnoremap p "+gP
vnoremap p "+gP

vnoremap * y/\V<C-r>=escape(@",'/\')<CR><CR>

" TURN OFF HIGHLIGHT ALL SEARCH BY ESC KEY:
nnoremap <esc> :nohlsearch<CR>
" DONT JUMP TO NEXT SEARCH:
nnoremap * *N

" USE TAB TO JUMP FROM BRACKET TO BRACKET:
nnoremap <tab> %
vnoremap <tab> %

" TURN OFF NARROW KEYS IN NORMAL MODE:
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>

" AUTO CLOSING BRACKETS:
""inoremap {      {}<Left>
""inoremap {<CR>  {<CR>}<Esc>O
""inoremap {{     {{}}<Left><Left>
""inoremap {}     {}<Left>
""inoremap [      []<Left>
""inoremap [<CR>  [<CR>]<Esc>O
""inoremap [[     [[]]<Left><Left>
""inoremap []     []<Left>
""inoremap (      ()<Left>
""inoremap (<CR>  (<CR>)<Esc>O
""inoremap ((     (())<Left><Left>
""inoremap ()     ()<Left>
""inoremap "      ""<Left>
""inoremap "<CR>  "<CR>"<Esc>O
""inoremap ""     """"<Left><Left>
""inoremap ""     ""<Left>
""inoremap '      ''<Left>
""inoremap '<CR>  '<CR>'<Esc>O
""inoremap ''     ''''<Left><Left>
""inoremap ''     ''<Left>
""

"autocmd FileType go nmap <leader>b  <Plug>(go-build)
"autocmd FileType go nmap <leader>r  <Plug>(go-run)

" CTRLP FUZZY SEARCH PLUGIN SETTINGS:
set wildignore+=*/tmp/*,*/bin/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*\\bin\\*,*.swp,*.zip,*.exe  " Windows
" CTRLP SETTINGS END

" NETRW SETTINGS:
" disable folder information:
let g:netrw_banner = 0
" list files as tree
let g:netrw_liststyle = 3
" open file in previous window (in buffer?)
let g:netrw_browse_split = 4
" show split on the left?
let g:netrw_altv = 1
" size of netrw split
let g:netrw_winsize = 25
map <M-1> :Vexplore<CR>
" NETRW SETTINGS END

"COLOR SCHEME:
"colorscheme zellner
set background=dark
colorscheme vimBoxColorsDuringLoad
set guifont=JetBrains\ Mono:h18

"TURN ON NUMBERS OF LINE:
set number
set relativenumber

"SET WINDOW SIZE:
set lines=33
set columns=110

"TURN ON AUTODEFINE SYNTAX OF FILE:
syntax on

set backspace=indent,eol,start
set foldmethod=manual
filetype plugin on

"ELEMENTS OF GRAPHIC INTERFACE:
set guioptions-=T
set guioptions-=b
set guioptions-=m
set guioptions-=r

"SHOW CURSOR POSITION IN CORNER OF WINDOW:
set ruler

"AUTOINDENT:
set ai

set expandtab

"WIDTH OF TAB:
set tabstop=4

"WIDTH OF INDENT(SHIFT + > FOR EXAMPLE):
set shiftwidth=4

set softtabstop=4

"IGNORE CASE IN SEARCH:
set ignorecase
set smartcase

"IN ALL DOCUMENT BY DEFAULT:
set gdefault

"HIGHLIGHT ALL SEARCH:
set hlsearch

" TURN OFF SPLACH TEXT ON START:
set shortmess+=tToOI

" BEATIFUL AUTOCOMPLEMENT:
set wildmenu

" AUTOSAVE ON GO TO ANOTHER FILE:
set autowrite

" SET NOWRAP:
set wrapmargin=5

set listchars=tab:<-,trail:·
set list

set scrolloff=7

set foldmethod=manual
set foldcolumn=3

" SHOW STATUSLINE:
set laststatus=2

""
"""set statusline=%t\ %y%m%r[%{&fileencoding}]%<[%{strftime(\"%d.%m.%y\",getftime(expand(\"%:p\")))}]%k%=%-14.(%l,%c%V%)\ %P
"""set statusline=%F%m%r%h%w%=[fileenc=%{&fileencoding},enc=%{&encoding}\]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
""set statusline=%<%f%h%m%r%=[%{&fileencodings}]\ %{&encoding}\ %l,%c%V\ %p%%\ %L
""set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
""
"""set cursorline
"""set cursorcolumn
""
"""position of window
""winpos 0 0
""
"""encoding
""set encoding=utf8
""

" RETURNS TRUE IF PASTE MODE IS ENABLED:
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
