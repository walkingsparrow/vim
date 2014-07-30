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

set cinoptions+=g2,h2

let ConqueTerm_CWInsert = 1
let ConqueTerm_Color = 0
let ConqueTerm_ReadUnfocused = 1

"set linespace=5

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

" au FileType python set omnifunc=pythoncomplete#Complete
" let g:SuperTabDefaultCompletionType = "context"
" set completeopt=menuone,longest,preview

"let vimrplugin_term = "/Applications/iTerm.app/Contents/MacOS/iTerm"
"let vimpager_use_gvim = 1

set number
hi LineNr ctermfg=243 ctermbg=253

au BufNewFile,BufRead *.sql_in setlocal ft=sql
au BufNewFile,BufRead *.py_in setlocal ft=python
au BufNewFile,BufRead *.notes setlocal ft=notes

au BufNewFile,BufRead *.erl imap -- <space>-><space>
"au BufNewFile,BufRead *.erl imap __ _
au BufNewFile,BufRead *.ex imap -- <space>-><space>
"au BufNewFile,BufRead *.ex imap __ _
au BufNewFile,BufRead *.exs imap -- <space>-><space>
"au BufNewFile,BufRead *.exs imap __ _
au BufNewFile,BufRead *.erl imap __ <space><-<space>
au BufNewFile,BufRead *.ex imap __ <space><-<space>
au BufNewFile,BufRead *exs imap __ <space><-<space>

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
"let g:airline_theme="bubblegum"
let g:airline_theme="solarized"

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

" "rainbow_parentheses.vim
" au VimEnter * RainbowParenthesesToggle
" "au FileType clojure RainbowParenthesesToggle
" "au FileType lisp RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
" au Syntax * RainbowParenthesesLoadChevrons
"
" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['gray',        'RoyalBlue3'],
"     \ ['black',       'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['red',         'firebrick3'],
"     \ ]
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['darkred', 'brown', 'darkblue', 'darkgray', 'darkgreen', 'darkcyan', 'red', 'darkmagenta', 'darkcyan'],
\   'operators': '_,_',
\   'parentheses': [['(',')'], ['\[','\]'], ['{','}']],
\   'separately': {
\       '*': {},
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\           'ctermfgs': ['darkgray', 'darkblue', 'darkmagenta', 'darkcyan', 'darkred', 'darkgreen'],
\       },
\       'html': {
\           'parentheses': [['(',')'], ['\[','\]'], ['{','}'], ['<\a[^>]*[^/]>\|<\a>','</[^>]*>']],
\       },
\       'tex': {
\           'operators': '',
\           'parentheses': [['(',')'], ['\[','\]']],
\       },
\   }
\}


nnoremap <F8> :GundoToggle<CR>
set undodir=~/.vim-undo
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
"let g:gundo_disable = 1

command -nargs=* -complete=help H vertical belowright help <args>

map <F4> :setlocal spell! spelllang=en_us<CR>

"set guifont=Consolas:h16
set lines=40 columns=100
set lsp=2
set linespace=6

let g:atp_tab_map=1

"let g:acp_behaviorKeywordLength = 3
"let g:acp_behaviorSnipmateLength = 1

" highlight long lines
" augroup vimrc_autocmds
"     autocmd BufEnter * highlight OverLength ctermbg=234 guibg=#303030
"     autocmd BufEnter * match OverLength /\%64v.*/
" augroup END

augroup vimrc_autocmds
    autocmd BufEnter * highlight OverLength ctermbg=234 ctermfg=None
    autocmd BufEnter * match OverLength /\%65v/
augroup END

se nostartofline

set clipboard=unnamedplus,unnamed,autoselect


" if has("autocmd") && has('GUI_GTK')
"     au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"     au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"     au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
" endif
"
" if &term =~ '^xterm' && $SSH_CONN == "yes"
"    "use an orange cursor in insert mode
"   "let &t_SI = "\<Esc>]12;orange\x7"
"    "use a red cursor otherwise
"   "let &t_EI = "\<Esc>]12;red\x7"
"   "silent !echo -ne "\033]12;red\007"
"    "reset cursor when vim exits
"   "autocmd VimLeave * silent !echo -ne "\033]112\007"
"    "use \003]12;gray\007 for gnome-terminal
"   " solid underscore
"   let &t_SI .= "\<Esc>[6 q"
"   " solid block
"   let &t_EI .= "\<Esc>[2 q"
"   " 1 or 0 -> blinking block
"   " 3 -> blinking underscore
"   " Recent versions of xterm (282 or above) also support
"   " 5 -> blinking vertical bar
"   " 6 -> solid vertical bar
" endif


set background=dark
"colorscheme myzenburn
"highlight MatchParen cterm=bold ctermfg=235 ctermbg=darkgreen
"highlight Comment gui=italic cterm=italic
"highlight Normal ctermbg=235 ctermfg=253
"highlight LineNr ctermbg=236 ctermfg=240
"highlight Pmenu guibg=gray40 guifg=gray32 ctermbg=240 ctermfg=250
"highlight PmenuSel ctermbg=34 ctermfg=16

"let g:kolor_italic=1                    " Enable italic. Default: 1
"let g:kolor_bold=1                      " Enable bold. Default: 1
"let g:kolor_underlined=0                " Enable underline. Default: 0
"let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0

let g:solarized_termcolors= 256
let g:solarized_termtrans = 1
let g:solarized_bold = 1
let g:solarized_underline = 1
let g:solarized_italic = 1
let g:solarized_contrast = "high"
let g:solarized_visibility= "high"
colorscheme solarized
highlight Comment cterm=italic ctermfg=023
highlight scalaMultilineComment cterm=italic ctermfg=023
highlight scalaTrailingComment cterm=italic ctermfg=023
"highlight Normal ctermbg=235 ctermfg=188
"highlight LineNr ctermbg=236 ctermfg=240
"highlight Pmenu guibg=gray40 guifg=gray32 ctermbg=240 ctermfg=250
"highlight PmenuSel ctermbg=34 ctermfg=16

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

"set showbreak=↪

noremap <silent> <F2> :BufExplorer<CR>
imap <silent> <F2> <ESC>:BufExplorer<CR>

"let g:indentLine_loaded = 0
let g:indentLine_color_term = 235
"let g:indentLine_char = "╎"
"let g:indentLine_char = '│'

" align function arguments
"set cino+=(0

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

hi Visual cterm=None ctermbg=236 ctermfg=None

" ----------------------------------------------------------------------

nmap <silent> <F3> :TagbarToggle<CR>

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

" autocmd Filetype scala set softtabstop=2
" autocmd Filetype scala set sw=2
" autocmd Filetype scala set ts=2
let g:scala_sort_across_groups=1
au BufEnter *.scala setl formatprg=java\ -jar\ $HOME/.vim/scalariform.jar\ -f\ -q\ +alignParameters\ +alignSingleLineCaseStatements\ +doubleIndentClassDeclaration\ +preserveDanglingCloseParenthesis\ +rewriteArrowSymbols\ +preserveSpaceBeforeArguments\ --stdin\ --stdout
"nmap <leader>m :SortScalaImports<CR>gggqG<C-o><C-o><leader><w>

set fillchars+=stl:\ ,stlnc:\

au BufNewFile,BufRead *.sbt setlocal ft=sbt

"-----------------------------------------------------
" auto insert a new line after {
inoremap {<cr> {<cr>}<Tab><c-o><s-o>

"-----------------------------------------------------

" Kernel style indent
"set cinoptions=:0,(0,u0,W1s

" GNU style indent
"set cinoptions={1s,>2s,e-1s,^-1s,n-1s,:1s,p5,i4,(0,u0,W1s shiftwidth=2

"autocmd FileType * setlocal indentkeys+=!<Tab>

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
    call cursor(cur, len(getline(cur)))
    return
endfunction

nmap <silent> <C-c><C-c> <S-v>:ScreenSend<CR>:call Goto_next_nonblank()<CR>
imap <silent> <C-c><C-c> <ESC><S-v>:ScreenSend<CR>:call Goto_next_nonblank()<CR>a
vmap <silent> <C-c><C-c> :ScreenSend<CR>:'><CR>:call Goto_next_nonblank()<CR>

nmap <silent> <C-e><C-e> <S-v><f9><CR><C-w><C-p>:call Goto_next_nonblank()<CR>
imap <silent> <C-e><C-e> <ESC><S-v><f9><CR><C-w><C-p>:call Goto_next_nonblank()<CR>a
vmap <silent> <C-e><C-e> <f9><CR><C-w><C-p>:'><CR>:call Goto_next_nonblank()<CR>

nmap <silent> <C-c>% :ScreenShell!<CR>
imap <silent> <C-c>% <ESC>:ScreenShell!<CR>a
nmap <silent> <C-c>" :ScreenShell<CR>
imap <silent> <C-c>" :ScreenShell<CR>a

function! s:ScreenShellListener()
    if g:ScreenShellActive
        nmap <silent> <C-c>q :ScreenQuit<CR>
        imap <silent> <C-c>q <ESC>:ScreenQuit<CR>
    else
        nmap <silent> <C-c>q :wq<CR>
        imap <silent> <C-c>q <ESC>:wq<CR>
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
" imap <C-a> <ESC>^i
" nmap <C-a> ^
" nmap <C-e> $
" imap <C-e> <ESC>$a
imap F <ESC>wa
imap B <ESC>bi
nmap F w
nmap B b


" ------------------------------------------------------------
nmap <C-c>w :call Preserve("w")<CR>
imap <C-c>w <ESC>:call Preserve("w")<CR>a

nmap <leader>l :TlistToggle<CR>
nmap <leader>p :set paste!<CR>
"imap <leader>p <esc>:set paste!<cr>a

" Make double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR>:syntax sync fromstart<cr><Esc>

map <F6> :set wrap!<cr>

"nmap <F5> :w<CR>:SyntasticCheck<CR>

nmap <C-c>c :w<CR>:SyntasticCheck<CR>
"imap <F5> <ESC>:w<CR>:SyntasticCheck<CR>a

imap <C-c>c <ESC>:w<CR>:SyntasticCheck<CR>a
nmap <C-c>C :SyntasticReset<CR>
imap <C-c>C <ESC>:SyntasticReset<CR>a

vmap <C-c>= :Tabularize /=<CR>

"function! s:TabForIndent()
"    " Don't strip on these filetypes
"    if &ft == 'python'
"        imap <Tab> <Space><Space><Space><Space>
"        return
"    endif
"
"    if &ft == 'sql'
"        imap <Tab> <Space><Space><Space><Space>
"        return
"    endif
"
"    " use TAB for indentation in insert-mode
"    set cinkeys=0{,0},0),0#,!<Tab>,;,:,o,O,e
"    set indentkeys=!<Tab>,o,O
"    map <Tab> i<Tab><Esc>^
"endfunction

"autocmd BufEnter * call <SID>TabForIndent()

" use TAB for indentation in insert-mode
"set cinkeys=0{,0},0),0#,!<S-Tab>,;,:,o,O,e
"set indentkeys=!<S-Tab>,o,O
"map <S-Tab> i<S-Tab><Esc>^
nmap <leader><tab> ==
imap <leader><tab> <ESC>==a
nmap <leader>= ==
imap <leader>= <ESC>==a
"vmap <leader><tab> =<ESC>a

"nmap <C-t> a<C-t><ESC>
"nmap <C-d> a<C-d><ESC>
imap <C-c>. <C-t>
imap <C-c>, <C-d>
nmap <C-c>. a<C-t><ESC>
nmap <C-c>, a<C-d><ESC>

imap <C-p> <ESC>pa

nmap <C-c>x :CtrlPCmdPalette<CR>
imap <C-c>x <ESC>:CtrlPCmdPalette<CR>a

" ctrlp-funky
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1
nnoremap <C-c>f :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <C-c>F :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

imap <leader>w <ESC>:call Preserve("w")<CR>
nmap <leader>w :call Preserve("w")<CR>

" ZoomWin
nmap <leader>o <c-w>o

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 1)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 2)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 2)<CR>

function! g:ToggleColorColumn()
    if &colorcolumn != ''
        setlocal colorcolumn&
    else
        setlocal colorcolumn=65
    endif
endfunction

nmap <silent> <f10> :call g:ToggleColorColumn()<CR>

" SQLite
let g:dbext_default_profile_PG = 'type=PGSQL:passwd=:host=localhost:user=qianh1:dbname=madlib'

"imap <C-j> <Plug>snipMateNextOrTrigger
"smap <C-j> <Plug>snipMateNextOrTrigger

" Ultisnips options
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-n>"
let g:UltiSnipsJumpBackwardTrigger=""

" YouCompleteMe options
let g:ycm_auto_trigger = 0
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_filetype_specific_completion_to_disable = {'cpp': 0, 'c': 0, 'python': 0}

let python_highlight_all = 1

let g:airline_exclude_preview = 1
let g:ctrlspace_use_tabline = 1

""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
"let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1

" vim-powerline symbols
let g:airline_left_sep          = ''
let g:airline_left_alt_sep      = ''
let g:airline_right_sep         = ''
let g:airline_right_alt_sep     = ''
let g:airline_branch_prefix     = ''
let g:airline_readonly_symbol   = ''
let g:airline_linecolumn_prefix = ''

let g:tex_conceal = ''

autocmd BufEnter * let &titlestring = '' . expand("%:t")
set title

" Make sure VIM do not lose track of syntax colors while scolling
"autocmd BufEnter * syntax sync fromstart
"nmap <silent> i :syntax sync fromstart<cr>:startinsert<cr>
imap <silent> <esc> <C-[>:syntax sync fromstart<cr>

imap <leader>- <space><C-o>60i-<esc>a

let erlang_show_errors = 0

"let g:ctrlp_user_command = 'ag %s --files-with-matches --hidden -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard']

" ag is fast enough that CtrlP doesn't need to cache
" let g:ctrlp_use_caching = 0
"
" " let g:ctrlp_user_command = {
" "   \ 'types': {
" "     \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
" "     \ 2: ['.hg', 'hg --cwd %s locate -I .'],
" "     \ },
" "   \ 'fallback': 'find %s -type f'
" "   \ }
"
"
" let g:ctrlp_custom_ignore = {
"             \ 'dir': '\v[\/]\.(git|hg|svn)$',
"             \ 'file': '\v\.(exe|so|dll|dat|DS_Store)$',
"             \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
"             \ }
"
"
" " let g:ctrlp_custom_ignore = {
" "   \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
" "   \ 'file': '\.so$\|\.dat$|\.DS_Store$'
" "   \ }

let g:ConqueTerm_StartMessages = 0

set rtp+=~/.fzf
nmap <leader>z :FZF<cr>

" Color name (:help cterm-colors) or ANSI code
" let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" ------------------------------------------------------------

" let g:acp_enableAtStartup = 0
" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"
" let g:neocomplete#disable_auto_complete = 1

" inoremap <expr><Down> pumvisible() ? "\<C-n>" : "\<Down>"
" inoremap <expr><Up> pumvisible() ? "\<C-p>" : "\<Up>"
"
" let g:neocomplete#cursor_hold_i_time = 200
" let g:neocomplete#enable_prefetch = 1
"
" let g:neocomplcache_force_overwrite_completefunc = 1
" if !exists('g:neocomplcache_omni_functions')
"     let g:neocomplcache_omni_functions = {}
" endif
" if !exists('g:neocomplcache_force_omni_patterns')
"     let g:neocomplcache_force_omni_patterns = {}
" endif
" let g:neocomplcache_force_overwrite_completefunc = 1
" let g:neocomplcache_force_omni_patterns['python'] = '[^. t].w*'
" set ofu=syntaxcomplete#Complete
" au FileType python set omnifunc=pythoncomplete#Complete
" au FileType python let b:did_ftplugin = 1
" let g:jedi#popup_on_dot = 0
"
" let g:marching_enable_neocomplete = 1
"
" if !exists('g:neocomplete#force_omni_input_patterns')
"   let g:neocomplete#force_omni_input_patterns = {}
" endif
"
" let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
"
" set pumheight=10

" ------------------------------------------------------------

" autocmd BufEnter * let b:SuperTabDisabled = 1
let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabContextDefaultCompletionType = "<c-x><c-u>"
" let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
" let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
" let g:SuperTabContextDiscoverDiscovery =
"             \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
let g:SuperTabMappingForward = '<S-Tab>'
let g:SuperTabMappingBackward = '<leader><space>'
let g:SuperTabMappingTabLiteral = '<Tab>'

autocmd FileType *
            \ if &omnifunc != '' |
            \ call SuperTabChain(&omnifunc, "<c-p>") |
            \ call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
            \ endif

inoremap <expr><Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr><Up> pumvisible() ? "\<C-p>" : "\<Up>"

set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
" The single one that works with clang_complete
let g:clang_snippets_engine='clang_complete'

" Complete options (disable preview scratch window, longest removed to aways
" show menu)
set completeopt=menu,menuone

" Limit popup menu height
set pumheight=10

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
