if !has('nvim') && has('lua')
    " add lua path
    let s:plugin_dir = fnamemodify(expand('<sfile>'), ':h:h:h').'\lua'
    let str = s:plugin_dir . '\?.lua;' . s:plugin_dir . '\?\init.lua;'
    lua package.path=vim.eval("str") .. package.path
endif
function! lua#omni#complete(findstart, base) abort
    lua require('luavi').complete(require('luavi.vimutils').eval('a:findstart'), require('luavi.vimutils').eval('a:base'))
endfunction
