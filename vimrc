"I don't really use vim all that often,
"and so this not a complete .vimrc at all.
"i.e., it has not been battled-tested,
"and it probably sucks, 
"probably you shouldn't use it.
"That is all.

"Also you have to install Vundle
"to make this work.



"--VUNDLE CONFIGURATION---
"---KEEP ALL OF THIS AT THE TOP---
"INSTRUCTIONS- https://github.com/gmarik/Vundle.vim


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"!!!----MY PLUGINS---!!!

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'supertab'
Plugin 'tcomment'
Plugin 'jellybeans.vim'
"Plugin 'nathanealkane/vim-indent-guides'
Plugin  'sickill/vim-monokai'
Plugin 'lucius'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kolor'
Plugin 'kien/ctrlp.vim'
Plugin 'benmills/vimux'
Plugin 'amiorin/vim-project'
Plugin 'wting/gitsessions.vim'
Plugin 'szw/vim-ctrlspace'









" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"!!!---KEYMAPPINGS---!!!

inoremap jj <Esc>

"disable those smelly arrow keys

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"enable line numbering
set number

"uses spaces not tabs
set tabstop=8
set shiftwidth=8
set softtabstop=4
set expandtab

"leave buffers open
set hidden

"some of the following stuff from 
"http://derekwyatt.org/2009/08/20/the-absolute-bare-minimum.html
"but mich of it was covered above by vundle already

syntax on

set term=xterm-256color
set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme jellybeans  "kolor 
"this seems to fix the weirdness with the terminal colors showing through
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE


set wildmenu
set wildmode=longest:full,full



"---PROJECTS CONFIG---

let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/
call project#rc("~/batcave-native")

Project '~/dotfiles'
Project 'codebox-native/whiskerfish'
