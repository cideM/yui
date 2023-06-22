local Cond = require("condition")

local TerminalColors = {}

setmetatable(TerminalColors, {
	__call = function(cls, ...)
		return cls:new(...)
	end,
	__tostring = function(__self)
		return __self:to_vim()
	end,
	__index = function(_, k)
		return rawget(TerminalColors, k)
	end,
})

function TerminalColors:new(init)
	assert(#init == 16, "init must be a table of 16 elements")
	local t = table.move(init, 1, 16, 1, {})
	setmetatable(t, getmetatable(self))
	return t
end

function TerminalColors:iter()
  return coroutine.wrap(function()
    for _, v in ipairs(self) do
      coroutine.yield(v)
    end
  end)
end

function Is(t)
	return getmetatable(t) == getmetatable(TerminalColors)
end

-- to_vim generates both Neovim and Vim colors plus a condition so the correct
-- one is rendered
function TerminalColors:to_vim()
	return Cond({
		"has('nvim')",
		self:to_nvim_term(),
		self:to_vim_term(),
	}):to_vim()
end

function TerminalColors:to_vim_term()
	local values = {}
	for _, c in ipairs(self) do
		table.insert(values, string.format("'%s'", c))
	end
	return "let g:terminal_ansi_colors = [" .. table.concat(values, ",") .. "]"
end

function TerminalColors:to_nvim_term()
	local buf = {}
	for i, c in ipairs(self) do
		table.insert(buf, string.format("let g:terminal_color_%d = '%s'", i - 1, c))
	end
	return table.concat(buf, "\n")
end

return {
	TerminalColors = TerminalColors,
	Is = Is,
}
