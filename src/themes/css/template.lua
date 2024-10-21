return function(colors)
	local light_dark = {}

	for k, v in pairs(colors.light) do
		if not string.match(k, "css-") then
			goto continue
		end

		--   --color-purple-fg-standalone: light-dark(#8f35bd, #b5a0ff);
		local strip_prefix = string.gsub(k, "css%-", "")
		local css_line = string.format(
			"--color-%s: light-dark(%s, %s);",
			strip_prefix,
			v,
			colors.dark[k]
		)
		table.insert(light_dark, css_line)

		local css_line_inverted = string.format(
			"--color-inverted-%s: light-dark(%s, %s);",
			strip_prefix,
			colors.dark[k],
			v
		)
		table.insert(light_dark, css_line_inverted)

		::continue::
	end

	table.sort(light_dark)

	local buf_light = {}

	table.insert(buf_light, "@media (prefers-color-scheme: light) {")

	for k, v in pairs(colors.light) do
		if not string.match(k, "css-") then
			goto continue
		end

		local strip_prefix = string.gsub(k, "css%-", "")
		local css_line = string.format("--color-%s: %s;", strip_prefix, v)
		table.insert(buf_light, css_line)

		::continue::
	end

	table.insert(buf_light, "}")

	local buf_dark = {}

	table.insert(buf_dark, "@media (prefers-color-scheme: dark) {")

	for k, v in pairs(colors.dark) do
		if not string.match(k, "css-") then
			goto continue
		end

		local strip_prefix = string.gsub(k, "css%-", "")
		local css_line = string.format("--color-%s: %s;", strip_prefix, v)
		table.insert(buf_dark, css_line)

		::continue::
	end

	table.insert(buf_dark, "}")

	return {
		light = table.concat(buf_light, "\n"),
		dark = table.concat(buf_dark, "\n"),
		light_dark = table.concat(light_dark, "\n"),
	}
end
