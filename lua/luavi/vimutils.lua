vimutils = {}
 
vimutils.constant = "hello"


function vimutils.command(cmd)
    vim.api.nvim_command(cmd)
end


function vimutils.eval(expr)
    return vim.api.nvim_eval(expr)
end


function vimutils.get_current_line()
    return vim.api.nvim_get_current_line()
end


function vimutils.current_buffer()
    -- return vim.api.nvim_get_current_buf()
    -- return buffer userdata
end

function vimutils.current_linenr()
    return vim.api.nvim_eval('line(".")')
end

return vimutils
