set term=screen-256color
let g:rehash256=1

" Show line numbers
set number

" Allow mouse control
set mouse=a

" Color Scheme
let g:molokai_original=1
colorscheme molokai
"set background=dark

" Set automatic indentation
set autoindent
set smartindent
set expandtab

" Set tabs at 4 spaces
set cindent
set tabstop=4
set shiftwidth=4

set sw=4
set notextmode
set notextauto
set hlsearch
set incsearch
set textwidth=80

" Show matching [] and {}
set showmatch

" Spell check on
set spell spelllang=en_us
setlocal spell spelllang=en_us

" Toggle spelling with the F7 key
nn <F7> :setlocal spell! spelllang=en_us
imap <F7> :setlocal spell! spelllang=en_us

" Syntax highlighting
syntax on

" Spelling
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" where it should get the dictionary files
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'

" Set title of window to file name
set title

" Toggle paste
set pastetoggle=<F2>

" Set shell to bash
set shell=/bin/bash

" a.vim Settings
let g:alternateExtensions_h = "C,c,cpp,cxx,cc,CC"
let g:alternateExtensions_C = "h,H"

autocmd FileType *      set formatoptions=tcql nocindent comments&
autocmd FileType c,cpp,C  set formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://

set autowrite
ab #d #define
ab #i #include
ab #b /********************************************************
ab #e ********************************************************/
ab #l /*------------------------------------------------------*/

" Pathogen
call pathogen#infect()

" NERDTree shortcut
nmap <silent> <C-D> :NERDTreeToggle<CR> 

set nocompatible

" The default for 'backspace' is very confusing to new users, so change it to a
" more sensible value.  Add "set backspace&" to your ~/.vimrc to reset it.
set backspace=indent,eol,start

" Disable localized menus for now since only some items are translated (e.g.
" the entire MacVim menu is set up in a nib file which currently only is
" translated to English).
set langmenu=none


