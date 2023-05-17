-- and_or_base contains shared functionality for both And and Or
local and_or_base = {}

function and_or_base:new(sep, conditions)
	local t = { sep = sep, conditions = conditions }
	setmetatable(t, {
		__tostring = function(__self)
			return __self:to_vim()
		end,
		__index = and_or_base,
	})
	return t
end

function and_or_base:to_vim()
	local out = {}
	for _, arg in ipairs(self.conditions) do
		table.insert(out, tostring(arg))
	end
	return "(" .. table.concat(out, " " .. self.sep .. " ") .. ")"
end

-- apply fn to each condition string
function and_or_base:map(fn)
	local out = { sep = self.sep, conditions = {} }
	for _, arg in ipairs(self.conditions) do
		if type(arg) == "table" then
			table.insert(out.conditions, arg:map(fn))
		else
			table.insert(out.conditions, fn(arg))
		end
	end
	setmetatable(out, getmetatable(self))
	return out
end

local And = {}
setmetatable(And, {
	__call = function(_, ...)
		return and_or_base:new("&&", ...)
	end,
})

local Or = {}
setmetatable(Or, {
	__call = function(_, ...)
		return and_or_base:new("||", ...)
	end,
})

return {
	And = And,
	Or = Or,
}
