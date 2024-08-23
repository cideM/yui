local M = {}

-- merge merges multiple tables into a single table.
-- If a key is present in multiple tables, the value from the
-- last table is used.
M.merge = function(...)
	local res = {}
	for _, t in ipairs { ... } do
		for k, v in pairs(t) do
			res[k] = v
		end
	end
	return res
end

-- fold implements a bottom-up fold on a tree (also called
-- tree catamorphism). For simple values, f is applied to the
-- value itself. For tables, f is applied to the table and a
-- list of results from folding the table's children.
M.fold = function(f, t)
	local function go(node)
		if type(node) ~= "table" then
			return f(node)
		end
		local sub_forest_results = {}
		for k, child in pairs(node) do
			sub_forest_results[k] = go(child)
		end
		return f(node, sub_forest_results)
	end
	return go(t)
end

-- mapkv applies a function to each key-value pair in a table.
-- It does not recurse.
M.mapkv = function(f, t)
	local res = {}
	for k, v in pairs(t) do
		res[k] = f(k, v)
	end
	return res
end

return M
