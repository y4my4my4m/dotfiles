"
" Good reads (to be expanded):
"   * https://stackoverflow.com/a/26710166/969534
"   * https://nvie.com/posts/how-i-boosted-my-vim/
"   * http://lucumr.pocoo.org/2010/7/29/sharing-vim-tricks/
"

set encoding=utf-8
set nocompatible
filetype off            " required for vundle

" set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

"Plugin 'VundleVim/Vundle.vim'

" Editor
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'

"Plugin 'mkitt/tabline.vim'

" Git
Plugin 'tpope/vim-fugitive'

" Code Completion/Syntax
"Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/syntastic'

" Code Display
Plugin 'flazz/vim-colorschemes'

" Editing
Plugin 'tpope/vim-surround'

" Other
Plugin 'felixhummel/setcolors.vim'

call vundle#end()

"" Settings
" YCM
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter = '/usr/bin/python2'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'
let g:airline#extensions#tabline#enabled = 1

" Vim
syntax on
filetype plugin indent on

colorscheme molokai

set title                   " automaticall set title to the file that is open
set hidden                  " allow unsaved buffers
set autochdir               " change into the directory of the currently opened file
set history=1000            " bigger history
set undolevels=1000         " bigger undo buffer

set relativenumber          " show relative line numbers
set number                  " show the current line number

set tabstop=4               " a tab is 4 spaces wide
set shiftwidth=4            " autoindent with 4 spaces
set shiftround              " indent to a multiple of shiftwidth with < and >
set expandtab

set smartcase               " ignore case when search string is all lowercase
set hlsearch                " highlight search terms
set incsearch               " show search matches while typing

"" Mappings
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

