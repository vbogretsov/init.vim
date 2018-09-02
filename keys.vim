" ======================== Command abbreviations =============================
cab Q q
cab W w
" =========================== Search =========================================
nnoremap <Esc> :noh<CR>
" =========================== Files ==========================================
nnoremap <Leader>e :e<Space>
nnoremap <Leader>f :find<Space>
" ========================== Clipboard integration ===========================
vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p p:call ClipboardPaste()<cr>
vnoremap <silent> p p:call ClipboardPaste()<cr>
" ========================== Tasks ===========================================
nnoremap tn :call TaskNew()<CR>
nnoremap tc :call TaskCancel()<CR>
nnoremap td :call TaskDone()<CR>
nnoremap tu :call TaskUndo()<CR>
" ========================== Buffers =========================================
nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <Leader>1 :b 1<CR>
nnoremap <Leader>2 :b 2<CR>
nnoremap <Leader>3 :b 3<CR>
nnoremap <Leader>4 :b 4<CR>
nnoremap <Leader>5 :b 5<CR>
nnoremap <Leader>6 :b 6<CR>
nnoremap <Leader>7 :b 7<CR>
nnoremap <Leader>8 :b 8<CR>
nnoremap <Leader>9 :b 9<CR>
" ========================== Quotes/Brackets =================================
nnoremap <buffer> <Leader>d :call Unpair()<cr>