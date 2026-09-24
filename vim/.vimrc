" change the leader key to space
let mapleader = "\<space>"

colorscheme slate

" change colors for matching parentheses
augroup CustomMatchParen
    autocmd!
    autocmd ColorScheme * hi MatchParen ctermfg=cyan ctermbg=NONE gui=NONE guifg=#5fd7ff guibg=NONE
augroup END

" disable vi compatibility
set nocompatible

" automatically read a file when it has been changed outside of vim
set autoread

" switch buffers without saving changes
set hidden

" always show the status bar
set laststatus=2

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

" show cursor line
set cursorline

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

" open new splits at the bottom and right
set splitbelow
set splitright

" disable Q to avoid entering outdated Ex-mode
nnoremap Q <nop>

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

" +/_ to move line down/up
nnoremap <silent> + :m .+1<cr>==
nnoremap <silent> _ :m .-2<cr>==
vnoremap <silent> + :m '>+1<cr>gv=gv
vnoremap <silent> _ :m '<-2<cr>gv=gv

" ctrl + h/j/k/l to switch windows
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

" ctrl + h/j/k/l to resize windows by 4 columns/rows
nnoremap <silent> <C-w>h :vertical resize -4<cr>
nnoremap <silent> <C-w>j :horizontal resize +4<cr>
nnoremap <silent> <C-w>k :horizontal resize -4<cr>
nnoremap <silent> <C-w>l :vertical resize +4<cr>

" paste over visual selection without overwriting the default register
xnoremap <leader>p "_dP

" toggle display of invisible characters
nnoremap <silent> <leader>ti :set list!<cr>
