.PHONY: all
all: colors/yui.vim doc/yui.txt autoload/lightline/colorscheme/yui.vim

colors/yui.vim: template/*.lua
	@mkdir -p colors
	LUA_PATH="template/?.lua" lua -e 'print(tostring(require("yui").theme))' > $@

autoload/lightline/colorscheme/yui.vim: template/*.lua
	@mkdir -p autoload/lightline/colorscheme
	LUA_PATH="template/?.lua" lua -e 'print(require("yui").lightline)' > $@

doc/yui.txt: template/*.lua
	@mkdir -p doc
	LUA_PATH="template/?.lua" lua -e 'print(require("yui").theme:docs())' > $@

.PHONY: clean
clean:
	@rm -f colors/yui.vim doc/yui.txt
