local contrast = require("colour").contrast

local Report = {}

setmetatable(Report, {
	__call = function(self, ...)
		return self:new(...)
	end,
	__tostring = function(__self)
		return __self:table()
	end,
	__index = function(_, k)
		return rawget(Report, k)
	end,
})

function Report:new()
	local obj = {}
	setmetatable(obj, getmetatable(self))
	self.__index = self
	return obj
end

function Report:add(title, color1, color2)
	table.insert(self, { title, color1, color2 })
end

-- round to 2 decimal places
local function round(n)
	local c = math.floor(n * 10 ^ 2 + 0.5) / 10 ^ 2
	return c
end

function Report:table()
	local lines = {}
	for _, v in ipairs(self) do
		local title, color1, color2 = table.unpack(v)
    local c = contrast(color1, color2)
		local rating = c > 7 and "AAA" or c > 4.5 and "AA" or c > 3 and "A" or "B"
		table.insert(lines, string.format("%-30s %-5s %-3s %s %s", title, round(c), rating, color1, color2))
	end
	return table.concat(lines, "\n")
end

return Report
