" source Lua...
if has('nvim')
    exe 'luafile ' . fnamemodify(expand('<sfile>'), ':h:h').'/lib/luavi/luacomplete_nvim.lua'
else
    exe 'luafile ' . fnamemodify(expand('<sfile>'), ':h:h').'/lib/luavi/luacomplete.lua'
endif


function! lua#complete(findstart, bash)

    

endfunction
