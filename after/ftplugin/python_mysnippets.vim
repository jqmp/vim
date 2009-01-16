if !exists('loaded_snippet') || &cp
    finish
endif

function! EscapeQuotes()
    return substitute(@z,'"','\\\\"','g')
endfunction

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

Snippet asseq assert (<{expr}> == <{target}>), "Expected <{expr:EscapeQuotes()}> == <{target:EscapeQuotes()}>; instead, <{expr:EscapeQuotes()}> == %r" % <{expr}><{}>
