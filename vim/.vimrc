" change the leader key to space
let mapleader = "\<space>"

" disable vi compatibility
set nocompatible

" do not wrap lines
set nowrap

" use system clipboard as default register
set clipboard=unnamedplus

" syntax highlighting
syntax on
" enable filetype-specific indentation rules
filetype indent on

" display invisible characters (tabs, trailing spaces, nbsp)
set list listchars=tab:»·,trail:·,nbsp:␣
highlight SpecialKey ctermfg=darkgray guifg=gray

" cursor line and number settings
set cursorline
highlight CursorLine   cterm=NONE ctermbg=236 ctermfg=NONE guibg=#333333 guifg=NONE
highlight CursorLineNr cterm=NONE guibg=NONE ctermfg=white guifg=NONE

" auto indenting
set autoindent
" set tab size to 4 spaces
set tabstop=4
" convert tab to spaces
set expandtab
" set the number of spaces to use for each step of indentation
set shiftwidth=4

" enable backspacing over indent, eol, and start
set backspace=indent,eol,start

" set numbered lines
set number

" disable backup files (*.swp)
set nobackup

" keep 8 screen lines above and below the cursor
set scrolloff=8

" enable search highlighting
set hlsearch
" highlight automatically while typing
set incsearch

" show menu for command-line tab completion
set wildmenu

" treat hythen-separated words as a word text object
set iskeyword+=-

" clear search highlighting
nnoremap <silent> <esc><esc> :nohlsearch<cr>

" half page down/up (centered)
nnoremap <silent> <C-d> <C-d>zz
nnoremap <silent> <C-u> <C-u>zz

" go to the start/end of line
nnoremap <silent> gh ^
nnoremap <silent> gl $

" select all
nnoremap <silent> <leader>a ggVG

" previous/next buffer
nnoremap <silent> <S-Tab> :bprevious<cr>
nnoremap <silent> <Tab>   :bnext<cr>
" close the active buffer
nnoremap <silent> <leader>bd :bdelete<cr>

" save the current file to disk
nnoremap <silent> <C-s>   :w<cr>
inoremap <silent> <C-s>   <esc>:w<cr>
vnoremap <silent> <C-s>   <esc>:w<cr>

" next/previous match centered
nnoremap <silent> n nzz
nnoremap <silent> N Nzz

" move line down/up
nnoremap <silent> <C-j> :m .+1<cr>==
nnoremap <silent> <C-k> :m .-2<cr>==
vnoremap <silent> <C-j> :m '>+1<cr>gv=gv
vnoremap <silent> <C-k> :m '<-2<cr>gv=gv

" close the current window
nnoremap <silent> Q :q<cr>

" paste over visual selection without overwriting the default register
xnoremap <leader>p "_dP
