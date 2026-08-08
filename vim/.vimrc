" disable vi compatibility
set nocompatible

" syntax highlighting
syntax on               
" enable filetype-specific indentation rules
filetype indent on

" cursor line and number settings
set cursorline
highlight CursorLine cterm=NONE ctermbg=236 ctermfg=NONE guibg=#333333 guifg=NONE
highlight CursorLineNr ctermfg=NONE cterm=NONE guibg=NONE ctermfg=yellow guifg=#FFFF00 

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

" enable search highlighting
set hlsearch
" highlight automatically while typing
set incsearch

" clear search highlighting
nnoremap <silent> <esc><esc> :nohlsearch<cr>

" half page down/up (centered)
nnoremap <silent> <C-d> <C-d>zz
nnoremap <silent> <C-u> <C-u>zz

" select all
nnoremap <silent> <C-a> ggVG

" previous/next buffer
nnoremap <silent> <S-Tab> :bprevious<cr>
nnoremap <silent> <Tab>   :bnext<cr>

" save the current file to disk
nnoremap <silent> <C-s>   :w<cr>
inoremap <silent> <C-s>   <esc>:w<cr>

" next/previous match centered
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
