vimutils = {}
 
vimutils.constant = "hello"


function vimutils.command(cmd)
    vim.api.nvim_command(cmd)
end


function vimutils.get_current_line()
    return vim.api.nvim_get_current_line()
end


return vimutils
