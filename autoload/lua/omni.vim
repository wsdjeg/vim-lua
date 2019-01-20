""
" @public
" this function is the omnifunc for lua file. to enable lua complete, add this
" to you vimrc.
" >
"   autocmd FileType lua setlocal omnifunc=luacomplete#complete
" <
function! lua#omni#complete(findstart, base) abort
    lua completefunc_luacode()
endfunction
