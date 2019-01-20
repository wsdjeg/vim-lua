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

" Common Lua abbreviations
let s:iabbrevlist = [
            \ ['pr(', 'print('],
            \ ['con(', 'table.concat('],
            \ ['ip(', 'ipairs('],
            \ ['pa(', 'pairs('],
            \ ['ins(', 'table.insert('],
            \ ['gmatch(', 'string.gmatch('],
            \ ['find(', 'string.find('],
            \ ['sub(', 'string.sub('],
            \ ['gsub(', 'string.gsub('],
            \ ['loc', 'local'],
            \ ['unp(', 'unpack('],
            \ ['match(', 'string.match('],
            \ ['sort(', 'table.sort('],
            \ ['ty(', 'type('],
            \ ['fore(', 'table.foreach('],
            \ ['forei(', 'table.foreachi('],
            \ ['func', 'function'],
            \ ['th', 'then'],
            \ ['el', 'else'],
            \ ['ei', 'elseif'],
            \ ['rep(', 'string.rep('],
            \ ['len(', 'string.len('],
            \ ['wrap(', 'coroutine.wrap('],
            \ ['yield(', 'coroutine.yield(']
            \ ]

function! luacomplete#SetLuaIabbrevs() abort
    for a in s:iabbrevlist
        execute 'iabbrev ' . a[0] . ' ' . a[1]
    endfor
endfunction

function! luacomplete#ClearLuaIabbrevs() abort
    for a in s:iabbrevlist
        execute 'iunabbrev ' . a[0]
    endfor
endfunction

