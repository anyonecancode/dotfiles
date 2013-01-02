 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " Look and feel
 Bundle 'altercation/vim-colors-solarized'
 
 " Git integrations
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-powerline'

 " Navigation
 Bundle 'scrooloose/nerdtree'
 Bundle 'kien/ctrlp.vim'

 " Code editing and highlighting
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'scrooloose/syntastic'
 Bundle 'beyondwords/vim-twig'
 Bundle 'vim-scripts/ZenCoding.vim'
 Bundle 'Markdown'
 Bundle 'vim-less'
 Bundle 'pangloss/vim-javascript'

 filetype plugin indent on     " required!
 syntax enable
 
 """""""""""""""""""""""""""""
 "Source initialization files
 """""""""""""""""""""""""""""
 
  runtime! bundle/vundle/init/**.vim
 
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

