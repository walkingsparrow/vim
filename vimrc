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

nmap \e :NERDTreeToggle<CR>

"let g:airline_powerline_fonts = 1
let g:airline_theme="bubblegum"

let g:headlights_smart_menus = 1

let g:move_key_modifier = 'C'

nmap <F9> :TagbarToggle<CR>

" Open file at last edit position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

"Auto line breaks for text and latex files
au BufEnter *.txt setl ts=4 sw=4 tw=70 fo=aw2q
au BufEnter *.tex setl ts=4 sw=4 tw=70 fo=aw2tq
au FileType ruby setl sw=2 sts=2 et

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
nnoremap <F5> :UndotreeToggle<cr>

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
highlight Pmenu guibg=gray36 guifg=gray ctermbg=243 ctermfg=238

" highlight long lines
augroup vimrc_autocmds
    autocmd BufEnter * highlight OverLength ctermbg=236 guibg=#003700
    autocmd BufEnter * match OverLength /\%76v.*/
augroup END

se nostartofline

" Make double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

"vmap <C-v> "+p
"vmap <C-c> "+y

set clipboard=unnamed
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

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
"set term=screen-256color
highlight Comment gui=italic "cterm=italic
highlight Normal ctermbg=235 ctermfg=248
highlight LineNr ctermbg=236 ctermfg=240

set ttymouse=sgr " make mouse work in Tagbar

set autoread " auto-update the file if it is changed by other editors


