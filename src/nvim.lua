local Theme = require("theme")

-- A theme for Neovim that let's you bulk add highlight groups.
-- Other than that it's just a Theme.
Nvim = Theme:new()

function Nvim:add_hlgroups(groups)
	for _, new_group in ipairs(groups) do
		self.deferred:add(new_group[1], new_group)
	end

	table.insert(self.thunks, function()
		local buf = {}
		for _, g in ipairs(groups) do
			table.insert(buf, g:render())
		end
		return table.concat(buf, "\n")
	end)
end

return Nvim
