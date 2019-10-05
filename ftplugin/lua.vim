setlocal omnifunc=lua#complete

if exists('g:spacevim_lua_foldmethod')
  if g:spacevim_lua_foldmethod ==# 'expr'
    setlocal foldmethod=expr
    setlocal foldexpr=lua#fold#foldlevel(v:lnum)
  else
    let &l:foldmethod = g:spacevim_lua_foldmethod
  endif
else
  setlocal foldmethod=manual
endif
setlocal nofoldenable
