set nocompatible
syntax enable
filetype plugin on
filetype indent on

set ofu=syntaxcomplete#Complete

"set number
set ruler
set ai sw=4
set paste
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

nmap <F2> <Plug>RESendMBlock
imap <F2> <Plug>RESendMBlock
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

au BufNewFile,BufRead *.sql_in setlocal ft=sql

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

nmap \e :NERDTreeToggle<CR>

let g:airline_theme="bubblegum"
