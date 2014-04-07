set nocompatible
syntax enable
filetype plugin on
filetype indent on

set ofu=syntaxcomplete#Complete

set ruler
set ai sw=4
"set paste
set mouse=a

set backspace=indent,eol,start

set cindent
set smartindent
set autoindent
set tabstop=8 softtabstop=4 shiftwidth=4 expandtab smarttab

let ConqueTerm_CWInsert = 1
let ConqueTerm_Color = 0
let ConqueTerm_ReadUnfocused = 1

set linespace=5

imap <F2> <Plug>RESendMBlock
nmap <F2> <Plug>RESendMBlock
vmap <F2> <Plug>RESendMBlock

set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'
let g:Tex_CompileRule_dvi = 'latex -src-specials -interaction=nonstopmode $*'

"set guifont=Ubuntu\ Mono:h19
"set bg=light

let Tlist_Ctags_Cmd = '/opt/local/bin/ctags'

set foldmethod=indent
set foldlevel=99

filetype on

let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

let vimrplugin_term = "/Applications/iTerm.app/Contents/MacOS/iTerm"
let vimpager_use_gvim = 1

set number
hi LineNr ctermfg=243 ctermbg=253

au BufNewFile,BufRead *.sql_in setlocal ft=sql
au BufNewFile,BufRead *.py_in setlocal ft=python
au BufNewFile,BufRead *.notes setlocal ft=notes

" ------------------------------------------------------
"  http://statico.github.io/vim.html settings

nmap \l :TlistToggle<CR>
nmap \o :set paste!<CR>
noremap <leader>t <Esc>:CommandT<CR>
noremap <leader>f <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>

execute pathogen#infect()
" call pathogen#incubate()
" call pathogen#helptags()

set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

nmap <F7> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup = 0

"let g:airline_powerline_fonts = 1
let g:airline_theme="bubblegum"

"let g:headlights_smart_menus = 1

let g:move_key_modifier = 'C'

" Open file at last edit position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

"Auto line breaks for text and latex files
au BufEnter *.txt setl ts=4 sw=4 tw=70 fo=aw2q
au BufEnter *.tex setl ts=4 sw=4 tw=70 fo=aw2tq
au FileType ruby setl sw=2 sts=2 et
au FileType notes setl ts=4 sw=4 tw=70 fo=aw2tq

let g:atp_folding =1

"match ErrorMsg '\s\+$'
autocmd BufWritePre * :%s/\s\+$//e

"rainbow_parentheses.vim
"au VimEnter * RainbowParenthesesToggle
au FileType clojure RainbowParenthesesToggle
au FileType lisp RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"undotree
"nnoremap <F5> :UndotreeToggle<cr>

"persistent undo
set undodir=~/.vim-undo
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

command -nargs=* -complete=help H vertical belowright help <args>

map <F4> :setlocal spell! spelllang=en_us<CR>

set guifont=Consolas:h16
set lines=40 columns=100
set lsp=2
set linespace=6

let g:atp_tab_map=1
highlight Pmenu guibg=gray40 guifg=gray32 ctermbg=243 ctermfg=238

" highlight long lines
augroup vimrc_autocmds
    autocmd BufEnter * highlight OverLength ctermbg=236 guibg=#003700
    autocmd BufEnter * match OverLength /\%67v.*/
augroup END

se nostartofline

" Make double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

set clipboard=unnamedplus,unnamed,autoselect

if &term =~ '^xterm'
   "use an orange cursor in insert mode
  "let &t_SI = "\<Esc>]12;orange\x7"
   "use a red cursor otherwise
  "let &t_EI = "\<Esc>]12;red\x7"
  "silent !echo -ne "\033]12;red\007"
   "reset cursor when vim exits
  "autocmd VimLeave * silent !echo -ne "\033]112\007"
   "use \003]12;gray\007 for gnome-terminal
  " solid underscore
  let &t_SI .= "\<Esc>[6 q"
  " solid block
  let &t_EI .= "\<Esc>[2 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif

set background=dark
colorscheme myzenburn
highlight MatchParen cterm=bold ctermfg=235 ctermbg=darkgreen
"set term=xterm-256color-italic
highlight Comment gui=italic cterm=italic
highlight Normal ctermbg=235 ctermfg=250
highlight LineNr ctermbg=236 ctermfg=240

set ttymouse=sgr " make mouse work in Tagbar

set autoread " auto-update the file if it is changed by other editors

nnoremap Q <nop>

set showbreak=↪

noremap <silent> <F2> :BufExplorer<CR>

let g:indentLine_color_term = 236
let g:indentLine_char = "╎"

" align function arguments
set cino+=(0

map <F6> :set wrap!<cr>

autocmd FileType r setlocal formatoptions=cq
let vimrplugin_applescript = 0

"let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_enable_balloons = 1
let g:syntastic_mode_map = { 'mode': 'passive' }
nmap <F5> :SyntasticCheck<CR>
nmap <C-x> :SyntasticCheck<CR>

set nostartofline

" ----------------------------------------------------------------------

nmap <F3> :TagbarToggle<CR>

let g:tagbar_type_scala = {
    \ 'ctagstype' : 'Scala',
    \ 'kinds'     : [
        \ 'p:packages:1',
        \ 'V:values',
        \ 'v:variables',
        \ 'T:types',
        \ 't:traits',
        \ 'o:objects',
        \ 'a:aclasses',
        \ 'c:classes',
        \ 'r:cclasses',
        \ 'm:methods'
    \ ]
\ }

let g:tagbar_type_r = {
    \ 'ctagstype' : 'r',
    \ 'kinds'     : [
        \ 'f:Functions',
        \ 'g:GlobalVariables',
        \ 'v:FunctionVariables',
    \ ]
\ }

let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }

let g:tagbar_type_puppet = {
    \ 'ctagstype': 'puppet',
    \ 'kinds': [
        \'c:class',
        \'s:site',
        \'n:node',
        \'d:definition'
      \]
\}

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

autocmd Filetype scala set softtabstop=2
autocmd Filetype scala set sw=2
autocmd Filetype scala set ts=2

set fillchars+=stl:\ ,stlnc:\

au BufNewFile,BufRead *.sbt setlocal ft=sbt

"-----------------------------------------------------
" auto insert a new line after {
inoremap {<cr> {<cr>}<c-o><s-o>

"-----------------------------------------------------

" use TAB for indentation in insert-mode
set cinkeys=0{,0},0),0#,!<Tab>,;,:,o,O,e
set indentkeys=!<Tab>,o,O

map <Tab> i<Tab><Esc>^

" Kernel style indent
set cinoptions=:0,(0,u0,W1s

" GNU style indent
"set cinoptions={1s,>2s,e-1s,^-1s,n-1s,:1s,p5,i4,(0,u0,W1s shiftwidth=2

autocmd FileType * setlocal indentkeys+=!<Tab>

" ---------------------------------------------------------------

let g:ScreenImpl = "Tmux"
let g:ScreenShellTmuxInitArgs = '-2'

nmap <leader>s <S-v>:ScreenSend<CR>
imap <leader>s <ESC><S-v>:ScreenSend<CR>i
vmap <leader>s :ScreenSend<CR>
