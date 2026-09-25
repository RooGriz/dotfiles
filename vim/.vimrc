" Change the leader key to space
let mapleader = "\<space>"

colorscheme slate

" Change colors for matching parentheses
augroup CustomMatchParen
    autocmd!
    autocmd ColorScheme * hi MatchParen ctermfg=cyan ctermbg=NONE gui=NONE guifg=#5fd7ff guibg=NONE
augroup END

" Disable vi compatibility
set nocompatible

" Automatically read a file when it has been changed outside of vim
set autoread

" Switch buffers without saving changes
set hidden

" Always show the status bar
set laststatus=2

" Do not wrap lines
set nowrap

" Use system clipboard as default register
set clipboard=unnamedplus

" Syntax highlighting
syntax on
" Enable filetype-specific indentation rules
filetype indent on

" Display invisible characters (tabs, trailing spaces, nbsp)
set list listchars=tab:»·,trail:·,nbsp:␣
highlight SpecialKey ctermfg=darkgray guifg=gray

" Show cursor line
set cursorline

" Auto indenting
set autoindent
" Set tab size to 4 spaces
set tabstop=4
" Convert tab to spaces
set expandtab
" Set the number of spaces to use for each step of indentation
set shiftwidth=4

" Enable backspacing over indent, eol, and start
set backspace=indent,eol,start

" Set numbered lines
set number

" Disable backup files (*.swp)
set nobackup

" Keep 8 screen lines above and below the cursor
set scrolloff=8

" Enable search highlighting
set hlsearch
" Highlight automatically while typing
set incsearch
" Enable case-insensitive search
set ignorecase
" Case-sensitive search only when uppercase letters are typed
set smartcase

" Show menu for command-line tab completion
set wildmenu

" Treat hythen-separated words as a word text object
set iskeyword+=-

" Open new splits at the bottom and right
set splitbelow splitright

" Disable Q to avoid entering outdated Ex-mode
nnoremap Q <nop>

" Clear search highlighting
nnoremap <silent> <esc><esc> :nohlsearch<cr>

" Half page down/up (centered)
nnoremap <silent> <C-d> <C-d>zz
nnoremap <silent> <C-u> <C-u>zz

" Go to the start/end of line
nnoremap <silent> gh ^
nnoremap <silent> gl $

" Select all
nnoremap <silent> <leader>a ggVG

" Previous/next buffer
nnoremap <silent> <S-Tab> :bprevious<cr>
nnoremap <silent> <Tab>   :bnext<cr>
" Close the active buffer
nnoremap <silent> <leader>bd :bdelete<cr>

" Save the current file to disk
nnoremap <silent> <C-s>   :w<cr>
inoremap <silent> <C-s>   <esc>:w<cr>
vnoremap <silent> <C-s>   <esc>:w<cr>

" Quit all open buffers and close Vim
nnoremap <leader>qq <cmd>qa<cr>

" Next/previous match centered
nnoremap <silent> n nzz
nnoremap <silent> N Nzz

" +/_ to move line down/up
nnoremap <silent> + :m .+1<cr>==
nnoremap <silent> _ :m .-2<cr>==
vnoremap <silent> + :m '>+1<cr>gv=gv
vnoremap <silent> _ :m '<-2<cr>gv=gv

" Ctrl + h/j/k/l to switch windows
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

" Ctrl + h/j/k/l to resize windows by 4 columns/rows
nnoremap <silent> <C-w>h :vertical resize -4<cr>
nnoremap <silent> <C-w>j :horizontal resize +4<cr>
nnoremap <silent> <C-w>k :horizontal resize -4<cr>
nnoremap <silent> <C-w>l :vertical resize +4<cr>

" Paste over visual selection without overwriting the default register
xnoremap <leader>p "_dP

" Shift selected text left/right in Visual mode and keep it selected
xnoremap <silent> < <gv
xnoremap <silent> > >gv

" Toggle display of invisible characters
nnoremap <silent> <leader>ti :set list!<cr>
