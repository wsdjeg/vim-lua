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
    return vim.api.nvim_buf_get_lines(vim.api.nvim_get_current_buf(), 0, -1, 0)
end

function vimutils.current_linenr()
    return vim.api.nvim_eval('line(".")')
end

return vimutils
