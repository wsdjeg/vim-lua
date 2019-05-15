vimutils = {}

vimutils.constant = "hello"

function table.has_key(test_table, test_key)
    for key, value in pairs(test_table) do
        if key == test_key then
            return true
        end
    end
    return false
end

local is_nvim = table.has_key(vim, 'api')

function vimutils.command(cmd)
    if is_nvim then
        vim.api.nvim_command(cmd)
    else
        vim.command(cmd)
    end
end


function vimutils.eval(expr)
    if is_nvim then
        return vim.api.nvim_eval(expr)
    else
        return vim.eval(expr)
    end
end


function vimutils.get_current_line()
    if is_nvim then
        return vim.api.nvim_get_current_line()
    else
        return vim.window().line
    end
end

local function _index_buffer(buf, line)
    return vim.api.nvim_buf_get_lines(buf._bufnr, 0, -1, 0)[line]
end

function vimutils.current_buffer()
    if is_nvim then
        local buffer = {}
        buffer._bufnr = vim.api.nvim_get_current_buf()
        buffer = setmetatable(buffer, { __index =  _index_buffer })
        return buffer
    else
        return vim.window().buffer
    end
end

function vimutils.current_linenr()
    return vimutils.eval('line(".")')
end

return vimutils
