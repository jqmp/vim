" We always want to start with an 80-column window, but the vertical height
" should depend on our screen size; so we'll set it in the local .gvimrc.
set columns=80

" window size mappings
" expand/shrink the window by 81 columns, the width of an extra vertical split
map <Leader>ww :set columns+=81<CR>
map <Leader>wW :set columns-=81<CR>
