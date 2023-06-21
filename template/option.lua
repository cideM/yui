local Cond = require("condition")
local strings = require("strings")

local ThemeOption = {}

setmetatable(ThemeOption, {
	__call = function(cls, ...)
		return cls:new(...)
	end,
	__tostring = function(__self)
		return __self:to_vim()
	end,
	__index = function(_, k)
		return rawget(ThemeOption, k)
	end,
})

function Is(t)
	return getmetatable(t) == getmetatable(ThemeOption)
end

-- ThemeOption takes the following keys:
--  - name: the name of the global variable
--  - default: the default value of the global variable
--  - description: a description of what this option does. This will be used in
--                 the documentation.
--  - cases[rhs].description: a description of what this option value does;
--                            this will be used in the documentation
--  - cases[rhs].groups: value of this group, typically a table of HLGroup, but
--                       can be anything tostring()
function ThemeOption:new(init)
	assert(init.name, "name is required")
	assert(init.description, "description is required")
	assert(init.default ~= nil, "default is required")
	assert(init.cases, "cases is required")

	for _, value in pairs(init.cases) do
		assert(value.description, "description is required")
		assert(value.groups, "groups is required")
	end

	local t = {}
	for k, v in pairs(init) do
		t[k] = v
	end

	setmetatable(t, getmetatable(self))

	return t
end

function ThemeOption:iter()
	return coroutine.wrap(function()
		for _, v in pairs(self.cases) do
			for _, hl_group in ipairs(v.groups) do
				if hl_group.iter then
					for x in hl_group:iter() do
						coroutine.yield(x)
					end
				end
			end
		end
	end)
end

function ThemeOption:to_vim()
	local num_cases = 0
	for _ in pairs(self.cases) do
		num_cases = num_cases + 1
	end
	if num_cases == 0 then
		return ""
	end

	local var_name_vim = self.name .. "_value"
	local lines = {
		string.format('" %s', self.name),
		string.format("let s:%s = get(g:, '%s', %s)", var_name_vim, self.name, self.default),
	}

	-- We want to iterate over keys in a table in a predictable and stable order
	local right_hand_if_sorted = {}
	for p in pairs(self.cases) do
		table.insert(right_hand_if_sorted, p)
	end
	table.sort(right_hand_if_sorted, function(a, b)
		return a > b
	end)

	local conditions = {}
	for _, rhs in ipairs(right_hand_if_sorted) do
		local groups = self.cases[rhs].groups

		table.insert(conditions, string.format("s:%s ==? %s", var_name_vim, rhs))

		local value = {}
		for _, hl_group in ipairs(groups) do
			table.insert(value, tostring(hl_group))
		end

		table.insert(conditions, table.concat(value, "\n"))
	end

	table.insert(lines, tostring(Cond { table.unpack(conditions) }))

	return table.concat(lines, "\n")
end

function ThemeOption:docs(line_len)
	local buf = {
		strings.space_between("", string.format("*g:%s*", self.name), line_len),
		"",
		-- Headings are done by appending a tilde to the end of the line. In :h help-writing,
		-- this is described as a Column heading.
		string.format("g:%s~", self.name),
		"",
	}

	-- If the option group has a field named "deprecated", then that field
	-- should be a string that contains the reason why the option group is
	-- deprecated. If the option group is deprecated, then add a note to the
	-- help text.
	if self.deprecated ~= nil then
		table.insert(buf, string.format("DEPRECATED: %s\n", self.deprecated))
	end

	table.insert(buf, self.description)
	-- Insert each case of the option group including the value and description
	-- of the option. Sort the cases by their key, to avoid unnecessary diffs.
	local case_keys = {}
	for key, _ in pairs(self.cases) do
		table.insert(case_keys, key)
	end
	table.sort(case_keys)

	for _, key in ipairs(case_keys) do
		local case = self.cases[key]
		local key_str = tostring(key)
		local is_default = key == self.default
		local description = case.description
		if is_default then
			description = string.format("%s (default)", description)
		end
		local line = strings.space_between(string.format("* %s:", key_str), description, line_len)
		table.insert(buf, line)
	end

	table.insert(buf, "")
	-- If the option group does not have a field called "example",
	-- then the example is generated from the name of the option group,
	-- and the default case. The example is a string that can be used
	-- to set the option group in Vim.
	local example = self.example
	if example == nil then
		example = string.format(
			[[Example: >
  let g:%s = %s
<]],
			self.name,
			self.default
		)
	else
		example = string.format(
			[[Example: >
%s
<]],
			example
		)
	end
	table.insert(buf, example)
	table.insert(buf, "")
	return table.concat(buf, "\n")
end

return {
	ThemeOption = ThemeOption,
	Is = Is,
}
