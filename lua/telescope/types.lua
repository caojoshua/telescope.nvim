local types = {}

-- convert numbered index table into an enum
--
-- example:
-- enum { "foo", "bar" }
-- returns:
-- { foo = 1, bar = 2 }
local enum = function(table)
  for i = 1, #table do
    table[table[i]] = i
    table[i] = nil
  end
  return table
end

types.path_display_options = enum {
  "HIDE_PATH",
  "SHORTEN_PATH",
  "TAIL_PATH"
}

return types
