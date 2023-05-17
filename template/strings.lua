local function indent(s, prefix)
	local out = {}
	for line in s:gmatch("[^\n]+") do
		table.insert(out, prefix .. line)
	end
	return table.concat(out, "\n")
end

local function space_between(left, right, max)
  assert(#left + #right <= max, "left and right are too long")
  local space = max - #left - #right
  return left .. string.rep(" ", space) .. right
end

return {
	indent = indent,
  space_between = space_between,
}
