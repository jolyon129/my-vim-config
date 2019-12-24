" --------------Vundle Starts-------------------------

set nocompatible              " be iMproved, required
filetype off                  " required <<========== We can turn it on later

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" <============================================>
" Specify plugins you want to install here.

" Install plasticboy/vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'

" <============================================>
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
"----------------Vundle ends here  ---------------------------

"-- ----- auto generate by Vim 8.0 ---------------------

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif


" -------------------My own configuration starts here--------------

" Double ESC to clear previous searching highlight
nnoremap <silent> <Esc><Esc> :noh<CR> :call clearmatches()<CR>

" Change the search highlighting background color
set hlsearch
hi Search ctermbg=Red


" when indenting with >, use 2 spaces width 
set shiftwidth=2
" On pressing tab, using spaces instead
set expandtab
" set the number of spaces a tab counts for 
set tabstop=2


" Put the vim backfiles into the ~/tmp/ directory
" This puts the backup files out of sight (and out of your way), but doesn't turn them off entirely.
set backupdir-=.
set backupdir^=~/tmp

" Disable vim markdown auto-folding
let g:vim_markdown_folding_disabled = 1
