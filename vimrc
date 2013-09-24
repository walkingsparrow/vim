set nocompatible
syntax enable
filetype plugin on
filetype indent on

set ofu=syntaxcomplete#Complete

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

let g:headlights_smart_menus = 1

let g:move_key_modifier = 'C'

nmap <F8> :TagbarToggle<CR>

" Open file at last edit position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

"hi Comment cterm=italic

"Auto line breaks for text and latex files
au BufEnter *.txt setl ts=4 sw=4 fo=aw2q
au BufEnter *.tex setl ts=4 sw=4 fo=aw2tq

let g:atp_folding =1

"set background=light
"set background=dark
colorscheme zenburn
"colorscheme solarized
"colorscheme grape "robinhood
highlight LineNr guibg=gray31 guifg=gray47
"highlight Normal guibg=gray27

let g:solarized_bold=1 " 1|0 show bold fonts
let g:solarized_italic=1 " 1|0 show italic fonts
let g:solarized_underline=1 " 1|0 show underlines
let g:solarized_contrast="high" " normal|high|low contrast
let g:solarized_visibility="high" " normal|high|low effect on whitespace characters
"hi Normal guifg=black

let g:atp_tab_map=1
highlight Pmenu guibg=gray36 guifg=gray

"match ErrorMsg '\s\+$'
autocmd BufWritePre * :%s/\s\+$//e
