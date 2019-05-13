complete = {}

local vimutil = require('luavi.vimutils')


function complete.complete(findstart, base)
  vimutil.command("return ['abc', 'abf']")
  -- this function is called twice - first for finding range in line to complete
  -- if findstart == 1 then
    -- vimutil.command("return " .. completion_findstart())
  -- else      -- the second run - do proper complete
    -- local comps = complete_base_string(base)
    -- for i = 1, #comps do comps[i] = "'" .. comps[i] .. "'" end
    -- returning
    -- vimutil.command("return [" .. table.concat(comps, ", ") .. "]")
  -- end
end


return complete
