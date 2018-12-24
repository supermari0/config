" The Villaplana Vimrc

set nocompatible              " be iMproved, required
filetype off                  " required
let g:syntastic_go_checkers = ['gofmt']

function Py2()
  let g:syntastic_python_python_exec = '/usr/local/bin/python2.7'
endfunction

function Py3()
  let g:syntastic_python_python_exec = '/usr/local/bin/python3.7'
endfunction

call Py3()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
"" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"" Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'altercation/vim-colors-solarized'

"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

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

" Always show statusline.
set laststatus=2

" Add relative path to statusline.
set statusline+=%F

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


" Disable Ex mode
nnoremap Q <nop>
set backspace=2
" Function for trimming trailing whitespace
fun! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun

command! TrimWhitespace call TrimWhitespace()

" Color settings, trying out Solarized
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
" NOTE: Below two settings may only be needed on WSL, depends on the terminal
" emulator.
set term=screen-256color
set t_ut=

" Highlight the 80th line
set cc=80

" Highlight trailing whitespace
match ErrorMsg '\s\+$'
