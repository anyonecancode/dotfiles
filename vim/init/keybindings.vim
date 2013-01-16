let mapleader = ","

" File tree browser
map \   :NERDTreeToggle<CR>

" Easy access to the shell
map <Leader><Leader> :!

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>
