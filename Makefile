.PHONY: all
all: colors/yui.vim doc/yui.txt autoload/lightline/colorscheme/yui.vim report.txt

lua_path = src/template/?.lua;src/?.lua
lua_files = src/template/*.lua src/*.lua

colors/yui.vim: $(lua_files)
	@mkdir -p colors
	LUA_PATH="$(lua_path)" lua -e 'print(tostring(require("yui").theme))' > $@

report.txt: $(lua_files)
	LUA_PATH="$(lua_path)" lua -e 'print(require("yui").report)' > $@

autoload/lightline/colorscheme/yui.vim: $(lua_files)
	@mkdir -p autoload/lightline/colorscheme
	LUA_PATH="$(lua_path)" lua -e 'print(require("yui").lightline)' > $@

doc/yui.txt: $(lua_files)
	@mkdir -p doc
	LUA_PATH="$(lua_path)" lua -e 'print(require("yui").theme:docs())' > $@

.PHONY: clean
clean:
	@rm -f colors/yui.vim doc/yui.txt report.txt autoload/lightline/colorscheme/yui.vim
