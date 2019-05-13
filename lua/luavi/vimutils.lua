vimutils = {}
 
vimutils.constant = "hello"


function vimutils.command(cmd)
    vim.api.nvim_command(cmd)
end

return vimutils
