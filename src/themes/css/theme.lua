local prefix = "css-"

local function gen_variants(colors)
	local kv = {}
	for _, group_name in ipairs {
		"success",
		"error",
		"warning",
		"info",
		"accent",
		"canvas",
		"layer1",
		"layer2",
		"layer3",
	} do
		for color_name, value in pairs(colors[group_name]) do
			local css_name = string.format(
				"%s%s-%s",
				prefix,
				group_name,
				string.gsub(color_name, "_", "-")
			)

			kv[css_name] = value
		end
	end

	for _, k in ipairs {
		"term_black",
		"term_red",
		"term_green",
		"term_yellow",
		"term_blue",
		"term_magenta",
		"term_cyan",
		"term_white",
		"term_bright_black",
		"term_bright_red",
		"term_bright_green",
		"term_bright_yellow",
		"term_bright_blue",
		"term_bright_magenta",
		"term_bright_cyan",
		"term_bright_white",
	} do
		local css_name = string.format("%s%s", prefix, string.gsub(k, "_", "-"))
		kv[css_name] = colors[k]
	end

	return kv
end

return function(colors, _)
	return {
		light = gen_variants(colors.light),
		dark = gen_variants(colors.dark),
	}
end
