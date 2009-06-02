" We always want to start with an 80-column window, but the vertical height
" should depend on our screen size; so we'll set it in the local .gvimrc.
set columns=80

" Set the GUI options (i.e., get rid of all the default GUI cruft)
" e: Show available tabs in the GUI
" i: Use an icon.  (Not certain what effect this has, but why not?)
set guioptions=ei

" window size mappings
" expand/shrink the window by 81 columns, the width of an extra vertical split
map <Leader>ww :set columns+=81<CR>
map <Leader>wW :set columns-=81<CR>
