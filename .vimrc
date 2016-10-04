"
"=============pathogen settings===============
filetype off
call pathogen#infect()
Helptags " Added to avoid having to manually install docs for plugins
filetype plugin indent on
"=============pathogen settings===============

"==============visual settings=================
set noerrorbells
set vb t_vb=
set tm=500
set foldcolumn=1
set ruler
set cmdheight=2
set shortmess=a
set backspace=eol,start,indent
set number
set relativenumber
set shiftround

set softtabstop=4
set shiftwidth=4
set textwidth=80
set expandtab
set autoindent
set smartindent
set smarttab
set tabstop=4
set wrap
set lbr
set tw=500
set cindent
set foldmethod=manual
set guioptions -=m
set guioptions -=T
set laststatus =2
set autoread
set encoding=utf-8
set ffs=unix,dos,mac
set noshowmode
set hlsearch
set showcmd
set scrolloff=3
set incsearch
highlight ColorColumn guibg=#331111
set colorcolumn=80
set cursorline
set breakindent

"==============visual settings=================



let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

"===========Vim Settings=============
set wildmenu
set wildignore=*.class,*.exe,*.o,*.obj
set splitright
set wb
set dir=~/tmp
set undofile
set undodir=~/undo
set backupdir=~/tmp
set listchars=space:―
set list
"===========Vim Settings=============

" Fix multiple cursors bullshit mdoe switching
let g:multi_cursor_exit_from_insert_mode=0
let g:multi_cursor_exit_from_visual_mode=0

"============Font Settings====================
set guifont=Envy\ Code\ R\ for\ PowerLine\ 11
set encoding=utf-8
set fileencoding=utf-8
"============Font Settings====================

"=============Session Manager=================
let g:session_autosave='yes'
"=============Session Manager=================

"===========color scheme settings=============
colorscheme hybrid
set background=dark
"===========color scheme settings=============

"===========NERDTree==========================
let NERDTreeIgnore=['\.exe$', '\.o$', '\.class']
"===========NERDTree==========================

"===========UltiSnip=================
"better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<S-Enter>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"====================================

nnoremap / ms/\v
nnoremap ? ms?\v

function! FixVimSpellcheck()
    if &spell
        normal! 1z=
    else
        set spell
        normal! 1z=
        set nospell
    endif
endfunction

" Use the first suggestion for vim's text replace
nnoremap z= :call FixVimSpellcheck()<cr>
"==============================================================================
"
"==========Custom Key Command=================
let mapleader="\<Space>"
nnoremap <S-Tab> :bn<Enter>
nnoremap <Leader>r :BD!<Enter>
nnoremap <Leader>w :w<Enter>
inoremap <C-W> <Esc>:wq <Enter>
nnoremap <C-W> <C-W>W
nnoremap <Tab> <S->>>
nnoremap <C-Tab> <C-W>W
nnoremap <C-h> b
nnoremap <C-l> w
inoremap <C-l> <Esc><C-RIGHT>i
inoremap <C-h> <Esc><C-LEFT>i
nnoremap <C-k> <Esc>{
inoremap <C-k> <Esc>7ki
nnoremap <C-j> <Esc>}
inoremap <C-j> <Esc>7ji
nnoremap <A-n> :cn <Enter>
nnoremap <A-m> :lmake -s<Enter>
nnoremap <A-o> :lopen<Enter>
nnoremap <A-b> :lcl<Enter>
nnoremap <F7> :lnext<Enter>
nnoremap <S-F7> :lp<Enter>
nnoremap <A-f> :set makeprg=make<Enter>
"==========Custom Key Command=================
