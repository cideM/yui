local interpolate = require("strings").interpolate

-- A theme is mostly a wrapper around a Deferred with a convenience wrapper
-- around interpolate() that checks if the value is a function and calls it.
local Theme = {}

function Theme:new(deferred)
	local t = {
		deferred = deferred,
		thunks = {},
	}

	setmetatable(t, self)
	self.__index = self
	return t
end

function Theme:interpolate(s, tab)
	for k, v in pairs(tab) do
		self.deferred:add(k, v)
	end

	table.insert(self.thunks, function()
		for k, v in pairs(tab) do
			if type(v) == "function" then
				tab[k] = tostring(v())
			else
				tab[k] = tostring(v)
			end
		end
		return interpolate(s, tab)
	end)
end

function Theme:render()
	local buf = {}
	for _, fn in ipairs(self.thunks) do
		table.insert(buf, fn())
	end
	return table.concat(buf, "\n")
end

return Theme
