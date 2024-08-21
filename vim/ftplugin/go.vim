setlocal noexpandtab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

" <https://stackoverflow.com/a/72138274>
function! GoFmt()
    let saved_view = winsaveview()
    silent! undojoin
    silent %!goimports
    if v:shell_error > 0
        silent undo
    endif
    call winrestview(saved_view)
endfunction

" au BufWritePre <buffer> call GoFmt()

" --- ALE ---

"let b:ale_linters = ['govet']
let b:ale_fixers = ['goimports']
