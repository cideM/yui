local strings = require("strings")
local Cond = {}

setmetatable(Cond, {
	__call = function(cls, ...)
		return cls:new(...)
	end,
	__tostring = function(__self)
		return __self:to_vim()
	end,
	__index = function(_, k)
		return rawget(Cond, k)
	end,
})

function Cond:to_vim()
	assert(#self >= 2, "Conditionals must have at least two arguments")
	local out = {}
	for i = 1, #self, 2 do
		if i == #self then
			local value = tostring(self[i])
			table.insert(out, "else")
			table.insert(out, strings.indent(value, "\t"))
			break
		end

		local prefix = "if"
		if i > 1 then
			prefix = "elseif"
		end
		local condition, value = self[i], tostring(self[i + 1])
		table.insert(out, string.format("%s %s", prefix, condition))
		table.insert(out, strings.indent(value, "\t"))
	end
	table.insert(out, "endif")
	return table.concat(out, "\n")
end

function Cond:new(init)
  assert(#init > 1, "Conditionals must have at least two arguments")
	local t = {}
	for _, v in ipairs(init) do
		table.insert(t, v)
	end
	setmetatable(t, getmetatable(self))
	return t
end

function Cond:iter()
  return coroutine.wrap(function()
    for _, v in ipairs(self) do
      if v.iter then
        for x in v:iter() do
          coroutine.yield(x)
        end
			else
				coroutine.yield(v)
      end
    end
  end)
end

-- apply a function to each condition; values are skipped
function Cond:map(fn)
	local out = {}
	for _, v in ipairs(self) do
		if type(v) == "table" then
			table.insert(out, v:map(fn))
		else
			table.insert(out, v)
		end
	end
	setmetatable(out, getmetatable(self))
	return out
end

function Is(t)
	return getmetatable(t) == getmetatable(Cond)
end

return {
	Cond = Cond,
	Is = Is,
}
