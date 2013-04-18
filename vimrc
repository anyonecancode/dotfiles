
 set nocompatible               " be iMproved
 filetype on                   " turn it on before off to avoid git message issues
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'

 " Look and feel
 Bundle 'altercation/vim-colors-solarized'
 Bundle 'Lokaltog/vim-powerline'
 Bundle 'surround.vim'

 " Git integrations
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-powerline'
 Bundle 'ervandew/supertab'

 " Navigation
 Bundle 'scrooloose/nerdtree'
 Bundle 'kien/ctrlp.vim'
 Bundle 'mileszs/ack.vim'

 " Autocompletions
 Bundle 'ervandew/supertab'

 " Code editing and highlighting
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'scrooloose/syntastic'
 Bundle 'beyondwords/vim-twig'
 Bundle 'vim-scripts/ZenCoding.vim'
 Bundle 'Markdown'
 Bundle 'vim-less'
 Bundle 'pangloss/vim-javascript'
 Bundle 'Puppet-Syntax-Highlighting'
 Bundle 'bitc/vim-bad-whitespace'
" Bundle 'sleistner/vim-jshint'

 filetype plugin indent on     " required!
 syntax enable

 """""""""""""""""""""""""""""
 "Source initialization files
 """""""""""""""""""""""""""""

  runtime! init/**.vim

 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

