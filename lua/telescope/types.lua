local types = {}

-- convert numbered index table into an enum
--
-- example:
-- enum { "foo", "bar" }
-- returns:
-- { foo = 1, bar = 2 }
-- these are going to be option names. to enable, add <option> = true
local paths = {"hide_path", "shorten_path", "tail_path", "smart_path"}
local enum = function(table)
  for i = 1, #table do
      table[table[i]] = paths[i]
      table[i] = nil
  end
  return table
end

types.path_display_options = enum {"HIDE_PATH", "SHORTEN_PATH", "TAIL_PATH", "SMART_PATH"}

return types
