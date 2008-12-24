if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet if if (".st.et.")<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet ifc if (".st.et.") // ".st.et."<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet ife if (".st.et.")<CR>{<CR>".st.et."<CR>}<CR>else<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet ifec if (".st.et.") // ".st.et."<CR>{<CR>".st.et."<CR>}<CR>else // ".st.et."<CR>{<CR>".st.et."<CR>}<CR>".st.et


exec "Snippet wh while (".st.et.")<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet whc while (".st.et.") // ".st.et."<CR>{<CR>".st.et."<CR>}<CR>".st.et
