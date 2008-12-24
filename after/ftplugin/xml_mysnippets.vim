if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

function! OptionalLine(default)
    if a:default == @z
        normal dd
        return "<{}>"
    endif
    return @z
endfunction

exec "Snippet all <LinearLayout<CR>".
            \"android:orientation=\"<{}>\"<CR>".
            \"android:layout_width=\"<{}>\"<CR>".
            \"android:layout_height=\"<{}>\"><CR>".
            \"<{}><CR>".
            \"</LinearLayout><CR>".
            \"<{}>"

" snippet using OptionalLine; can't get it working the way I want.
"exec "Snippet all <LinearLayout<CR>".
"            \"android:orientation=\"<{o:OptionalLine(\"o\")}>\"<CR>".
"            \"android:layout_width=\"<{lw:OptionalLine(\"lw\")}>\"<CR>".
"            \"android:layout_height=\"<{lh:OptionalLine(\"lh\")}>\"<CR>".
"            \"<CR>".
"            \"<{}><CR>".
"            \"</LinearLayout><CR>".
"            \"<{}>"

