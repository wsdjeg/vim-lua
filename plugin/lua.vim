""
" @section Introduction, intro
" @order intro mappings
" lua development plugin for vim and neovim.


" check if Vim is in correct version and has Lua support
if v:version < 703
    echohl WarningMsg
    echom 'Only Vim version 7.3 (or newer) is supported!'
    echohl NONE
    finish
endif
if !has('lua') && !has('nvim')
    echohl WarningMsg
    echom 'Lua support must be enabled!'
    echohl NONE
    finish
endif

" save and reset compatibility options
let s:save_cpo = &cpo
set cpo&vim

if exists('g:luacomplete_loaded')
  finish
else
  let g:luacomplete_loaded = 1
endif

""
" Diable/Enable default mappings in lua buffer.
" >
"   mode        key         functinon
"   normal      <leader>fl  print functin list
" <
let g:lua_default_mappings = 0

""
" @section Mappings, mappings
" luacomplete defined some mappings for lua buffer:
" >
"   <Plug>PrintFunctionList  print functino list
"   <Plug>WriteAndLuaFile    wirte and luafile
" <

noremap <unique> <script> <Plug>PrintFunctionList   :lua print_function_list()

" restore compatibility options
let &cpo = s:save_cpo
