"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""" General
" Turn syntax highlighting on
syntax on

set ruler

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Disable compatibility with vi which can cause unexpected issues
set nocompatible

" Set colorscheme
color desert

" Set linenumbers
au InsertEnter * set relativenumber
au InsertLeave * set relativenumber!

" Add numbers to each line on the left-hand side.
set number

" Diff settings
if &diff
    " diff mode
    set diffopt+=iwhite
endif

" Key Bindings.
nnoremap j gj
nnoremap k gk

" hightlight last inserted text
nnoremap gV `[v`]

set listchars=tab:>-,trail:-,eol:¶

" Tab settings
set autoindent      " copy indent from current line when starting a new line
set smartindent     " even better than autoindent (e.g. add indent after '{')
set tabstop=4       " The width of a TAB is set to 4
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columbs for a TAB
set expandtab       " Expand TABs to spaces
set cursorline      " Highlight the line where there is the cursor

" default encoding
set encoding=utf-8
set fileencoding=utf-8

" Search settings
set hlsearch        " highlight matches
set incsearch       " search as characters are entered

" Turn off search highlighting with <CR>
nnoremap <CR> :nohlsearch<CR><CR>

" Search down into subfolders
" Provides tab-completion  for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Make wildmenu behave like similar to Bash completion.
"set wildmode=list:longest

"""" STATUSLINE
" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ row:\ %l\ col:\ %c\ percent:\ %p%%
"%F – Display the full path of the current file.
"%M – Modified flag shows if file is unsaved.
"%Y – Type of file in the buffer.
"%R – Displays the read-only flag.
"%b – Shows the ASCII/Unicode character under cursor.
"0x%B – Shows the hexadecimal character under cursor.
"%l – Display the row number.
"%c – Display the column number.
"%p%% – Show the cursor percentage from the top of the file.


set laststatus=2    " Make statusline appear even with only single window 
set showmatch       " highlight matching parentheses/brackets [{()}]
set wrap            " Do not wrap lines. Allow long lines to extend as far as the line goes.
set showcmd         " show partial command you type in the last line of the screen

" Fold lines
set foldmethod=indent
set foldlevel=99
set showmode        " Show the mode you are on the last line
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Settings python
au BufNewFile, BufRead*.py
    \set tabstop=4 |
    \set softtabstop=4 |
    \set shiftwidth=4 |
    \set textwidth=200 |
    \set expandtab |
    \set autoindent |
    \set colorcolumn=79 " set marker to column 79 as required in PEP8|
    \set fileformat=unix

" Remove trailing whitespaces from python files
autocmd BufWritePre *.py : %s/\s\+$//e

"set statusline=%<%f\ %h%m%r%=%-14.(%I,%c%V%)\ %P

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Set the commands to save in history default number is 20.
set history=1000

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>-
noremap <c-down> <c-w>+
noremap <c-left> <c-w><
noremap <c-right> <c-w>>

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline 
    autocmd WinEnter * set cursorline 
augroup END

" Remap autocompletion of path
inoremap <C-f> <C-x><C-f>


