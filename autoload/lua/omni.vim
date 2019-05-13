function! lua#omni#complete(findstart, base) abort
    if has('nvim')
        lua require('luavi').complete(vim.api.nvim_eval('a:findstart'), vim.api.nvim_eval('a:base'))
    else
        lua luavi_complete(vim.eval('a:findstart'), vim.eval('a:base'))
    endif
endfunction
