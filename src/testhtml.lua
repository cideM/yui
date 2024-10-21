index = io.open("./index.html")
css = io.open("./css/yui.css"):read("a")
buf = {}
for line in index:lines() do
	if string.match(line, "/head") then
		table.insert(buf, "<style>")
		table.insert(buf, ":root {")
		table.insert(buf, "color-scheme: light dark;")
		table.insert(buf, css)
		table.insert(buf, "}")
		table.insert(buf, "</style>")
		table.insert(buf, line)
	else
		table.insert(buf, line)
	end
end

print(table.concat(buf, "\n"))
