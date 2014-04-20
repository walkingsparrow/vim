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

" imap <F2> <Plug>RESendMBlock
" nmap <F2> <Plug>RESendMBlock
" vmap <F2> <Plug>RESendMBlock

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

" noremap <leader>t <Esc>:CommandT<CR>
" noremap <leader>f <Esc>:CommandTFlush<CR>
" noremap <leader>m <Esc>:CommandTBuffer<CR>

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
au BufEnter *.txt setl ts=4 sw=4 tw=70 "fo=aw2q
au BufEnter *.tex setl ts=4 sw=4 tw=70 "fo=aw2tq
au FileType ruby setl sw=2 sts=2 et
au FileType notes setl ts=4 sw=4 tw=70 "fo=aw2tq

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

let g:acp_behaviorKeywordLength = 3

" highlight long lines
augroup vimrc_autocmds
    autocmd BufEnter * highlight OverLength ctermbg=236 guibg=#003700
    autocmd BufEnter * match OverLength /\%67v.*/
augroup END

se nostartofline

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
highlight Comment gui=italic cterm=italic
highlight Normal ctermbg=235 ctermfg=253
highlight LineNr ctermbg=236 ctermfg=240
highlight Pmenu guibg=gray40 guifg=gray32 ctermbg=240 ctermfg=250
highlight PmenuSel ctermbg=234 ctermfg=255

"colorscheme robinhood
" highlight MatchParen cterm=bold ctermfg=235 ctermbg=darkgreen
" highlight Comment gui=italic cterm=italic
" highlight Normal ctermbg=None ctermfg=229
" highlight Pmenu guibg=gray40 guifg=gray32 ctermbg=238 ctermfg=250
" highlight PmenuSel ctermbg=22 ctermfg=190
set nonumber
"highlight LineNr ctermfg=240

set ttymouse=sgr " make mouse work in Tagbar

set autoread " auto-update the file if it is changed by other editors

nnoremap Q <nop>

set showbreak=↪

noremap <silent> <F2> :BufExplorer<CR>
imap <F2> <ESC>:BufExplorer<CR>

"let g:indentLine_loaded = 0
let g:indentLine_color_term = 236
let g:indentLine_char = "╎"

" align function arguments
set cino+=(0

autocmd FileType r setlocal formatoptions=cq
let vimrplugin_applescript = 0

"let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_python_checkers=['pylint']
"let g:syntastic_python_checker_args='--ignore=C0111'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_enable_balloons = 1
let g:syntastic_mode_map = { 'mode': 'passive' }

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
inoremap {<cr> {<cr>}<Tab><c-o><s-o>

"-----------------------------------------------------

" Kernel style indent
set cinoptions=:0,(0,u0,W1s

" GNU style indent
"set cinoptions={1s,>2s,e-1s,^-1s,n-1s,:1s,p5,i4,(0,u0,W1s shiftwidth=2

autocmd FileType * setlocal indentkeys+=!<Tab>

" ----------------------------------------------------------------

" A wrapper function to restore the cursor position, window position,
" and last search after running a command.
function! Preserve(command)
    " Save the last search
    let last_search=@/
    " Save the current cursor position
    let save_cursor = getpos(".")
    " Save the window position
    normal H
    let save_window = getpos(".")
    call setpos('.', save_cursor)

    " Do the business:
    execute a:command

    " Restore the last_search
    let @/=last_search
    " Restore the window position
    call setpos('.', save_window)
    normal zt
    " Restore the cursor position
    call setpos('.', save_cursor)
endfunction

" ---------------------------------------------------------------

let g:ScreenImpl = "Tmux"
let g:ScreenShellTmuxInitArgs = '-2'
let g:ScreenShellAttachTargetCurrent = 1

function! Goto_next_nonblank()
    let cur = line(".")
    let end = line("$")
    for i in range(cur+1, end+1)
        if (len(getline(i)) > 0)
            call cursor(i, 1)
            return
        endif
    endfor
endfunction

nmap <C-c><C-c> <S-v>:ScreenSend<CR>:call Goto_next_nonblank()<CR>
imap <C-c><C-c> <ESC><S-v>:ScreenSend<CR>:call Goto_next_nonblank()<CR>a
vmap <C-c><C-c> :ScreenSend<CR>:'><CR>:call Goto_next_nonblank()<CR>

nmap <C-c>% :ScreenShell!<CR>
imap <C-c>% <ESC>:ScreenShell!<CR>a
nmap <C-c>" :ScreenShell<CR>
imap <C-c>" :ScreenShell<CR>a

function! s:ScreenShellListener()
    if g:ScreenShellActive
        nmap <C-c>q :ScreenQuit<CR>
        imap <C-c>q <ESC>:ScreenQuit<CR>
    else
        nmap <C-c>q :wq<CR>
        imap <C-c>q <ESC>:wq<CR>
    endif
endfunction

" unmap <C-c>'
" nmap <C-c>' :IPython!<CR>
" nmap <C-c>" :IPython<CR>

" function! s:ScreenShellListener()
"     if g:ScreenShellActive
"         nmap <C-c><C-c> <S-v>:ScreenSend<CR>:call Goto_next_nonblank()<CR>
"         nmap <C-c><C-x> :ScreenQuit<cr>
"         imap <C-c><C-c> <ESC><S-v>:ScreenSend<CR>:call Goto_next_nonblank()<CR>a
"         imap <C-c><C-x> <ESC>:ScreenQuit<cr>a
"         vmap <C-c><C-c> :ScreenSend<CR>:'><CR>:call Goto_next_nonblank()<CR>
"     else
"         nmap <C-c><C-c> :ScreenShell!<CR>
"         imap <C-c><C-c> <ESC>:ScreenShell!<CR>
"     endif
" endfunction

" nmap <C-c><C-c> :ScreenShell!<CR>
" imap <C-c><C-c> <ESC>:ScreenShell!<CR>

function! s:ScreenShortcutForPython()
    nmap <buffer> <C-c>% :IPython!<CR>
    imap <buffer> <C-c>% <ESC>:IPython!<CR>a
    nmap <buffer> <C-c>" :IPython<CR>
    imap <buffer> <C-c>" :IPython<CR>a
endfunction

autocmd FileType python call <SID>ScreenShortcutForPython()

augroup ScreenShellEnter
    autocmd User * call <SID>ScreenShellListener()
augroup END
augroup ScreenShellExit
    autocmd User * call <SID>ScreenShellListener()
augroup END

" ---------------------------------------------------------------

" insert mode jump to head and
imap <C-a> <ESC>^i
nmap <C-a> ^
nmap <C-e> $
imap <C-e> <ESC>$a
imap F <ESC>wa
imap B <ESC>bi
nmap F w
nmap B b

nnoremap <F8> :GundoToggle<CR>

" ------------------------------------------------------------
nmap <C-c>w :call Preserve("normal w")<CR>
imap <C-c>w <ESC>:call Preserve("normal w")<CR>a

nmap \l :TlistToggle<CR>
nmap \o :set paste!<CR>

" Make double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

map <F6> :set wrap!<cr>

nmap <F5> :w<CR>:SyntasticCheck<CR>

nmap <C-c>c :w<CR>:SyntasticCheck<CR>
imap <F5> <ESC>:w<CR>:SyntasticCheck<CR>a

imap <C-c>c <ESC>:w<CR>:SyntasticCheck<CR>a
nmap <C-c>C :SyntasticReset<CR>
imap <C-c>C <ESC>:SyntasticReset<CR>a

vmap <C-c>= :Tabularize /=<CR>

function! s:TabForIndent()
    " Don't strip on these filetypes
    if &ft == 'python'
        imap <Tab> <C-t>
        return
    endif

    " use TAB for indentation in insert-mode
    set cinkeys=0{,0},0),0#,!<Tab>,;,:,o,O,e
    set indentkeys=!<Tab>,o,O
    map <Tab> i<Tab><Esc>^
endfunction

autocmd BufEnter * call <SID>TabForIndent()

nmap <C-t> a<C-t><ESC>
nmap <C-d> a<C-d><ESC>
imap <C-c>. <C-t>
imap <C-c>, <C-d>
nmap <C-c>. <C-t>
nmap <C-c>, <C-d>

imap <C-p> <ESC>pa

nmap <C-c>x :CtrlPCmdPalette<CR>
imap <C-c>x <ESC>:CtrlPCmdPalette<CR>a

" ctrlp-funky
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1
nnoremap <C-c>f :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <C-c>F :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

imap <leader>w <ESC>:call Preserve("normal w")<CR>
nmap <leader>w :call Preserve("normal w")<CR>

" SQLite
let g:dbext_default_profile_PG = 'type=PGSQL:passwd=:host=localhost:user=qianh1:dbname=madlib'

let python_highlight_all = 1
