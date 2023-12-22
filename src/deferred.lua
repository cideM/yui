-- Deferred is ultimately just a k/v store.
-- The trick is that :call and :get both return functions, which, when called,
-- will return the value of the key at the given path. In the case of :call
-- you can also run a function on that value. This let's you build up a
-- table where the computation of most keys depends on a few other keys.
-- Some of the other modules in this folder will check if a value is a
-- function and call it if it is. None of the more generic modules for
-- working with colors care about this though.
local Deferred = {}

-- "redirect" is a function that is called with the (non-lazy) get function
-- and the table or value that correponds to the current path segment.
-- So for :get("foo", "bar", "baz") it would be called with:
-- 1st:
-- * get
-- * table/value "foo"
-- 2nd:
-- * get
-- * table/value "bar"
-- 3rd:
-- * get
-- * table/value "baz"
-- At each step you can return a different table by calling the passed in
-- "get" function. Check "yui.lua" for how it's used. Mostly to handle
-- special Vim color names such as 'fg' and 'bg'.
function Deferred:new(redirect)
	local t = {
		__redirect = redirect or function()
			return nil
		end,
	}
	setmetatable(t, self)
	self.__index = self
	return t
end

function Deferred:get(...)
	local fn = nil

	fn = function(...)
		local path = { ... }
		local t = self
		for _, k in ipairs(path) do
			local new_t = self.__redirect(fn, t)
			t = new_t and new_t[k] or t[k]
			if not t then
				error("path does not exist: " .. table.concat(path, ","))
			end
		end

		if type(t) == "function" then
			return t()
		end

		return t
	end

	local args = { ... }
	return function()
		local ok, result = pcall(fn, table.unpack(args))
		if not ok then
			error("error when getting '" .. table.concat(args, ".") .. "'; " .. result)
		end
		return result
	end
end

-- Add a key to the table. If the key already exists, an error is thrown.
function Deferred:add(k, v)
	if self[k] ~= nil then
		error("Key '" .. k .. "' already exists in the table", 2)
	end
	self[k] = v
end

-- Call a function with the values of the given paths as arguments. Can also
-- be called with a flat list of arguments. Meaning, both of these are valid:
-- * :call('foo', 'bar', fn, arg1, arg2)
-- * :call({{'foo', 'bar'}, {'bax', 'boo'}}, fn, arg1, arg2)
--
-- fn would be called with
-- * fn(foo.bar, arg1, arg2)
-- * fn(foo.bar, bax.boo, arg1, arg2)
function Deferred:call(...)
	local args = { ... }
	if type(select(1, ...)) == "function" then
		error("call() requires at least one string argument before the function")
	end

	return function()
		-- :call is called like this: :call('foo','bar', fn, arg1, arg2)
		-- convert 'foo', 'bar' to {{'foo', 'bar'}} so we can use a single
		-- code path afterwards
		local path = {}
		if type(args[1]) == "string" then
			for i, arg in ipairs(args) do
				if type(arg) == "function" then
					args = { table.unpack(args, i) }
					table.insert(args, 1, { path })
					goto done
				end
				table.insert(path, arg)
			end
			::done::
		end

		local paths, fn, params = args[1], args[2], table.pack(table.unpack(args, 3))

		for i = #paths, 1, -1 do
			table.insert(params, 1, self:get(table.unpack(paths[i]))())
		end

		return fn(table.unpack(params))
	end
end

return Deferred
