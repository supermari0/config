" The Villaplana Vimrc

" Enable line numbers on side.
set nu

" Enable syntax highlighting.
syntax on

" Make the tab character use 4 spaces.
set tabstop=4
set shiftwidth=4

" Automatically indent new lines.
set autoindent

" Automatically wrap text above 79 characters.
set textwidth=79
set expandtab

" Show tab characters and some other things.
set list
set listchars=tab:\|\ 

set equalalways

" Enable loading of the indent file for specific filetypes.
filetype indent on

" Always show statusline.
set laststatus=2

" Add relative path to statusline.
set statusline+=%f

" Statusline hax (slightly modded) courtesy of got-ravings.blogspot.com
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}\/ "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
"set statusline+=\ %P    "percent through file - doesn't really work

" I don't know what this does
set clipboard=unnamed

" Color the 80th line
set cc=80

" Highlight trailing whitespace
match ErrorMsg '\s\+$'

" Disable Ex mode
nnoremap Q <nop>
