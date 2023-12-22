.PHONY: all
all: colors/yui.vim doc/yui.txt autoload/lightline/colorscheme/yui.vim alacritty/yui.yml fish/yui.fish

lua_path = src/?.lua
lua_files = src/*.lua

colors/yui.vim: $(lua_files)
	@mkdir -p colors
	LUA_PATH="$(lua_path)" lua -e 'print(tostring(require("yui").theme))' > $@

alacritty/yui.yml: $(lua_files)
	@mkdir -p alacritty
	LUA_PATH="$(lua_path)" lua -e 'print(require("yui").alacritty)' > $@

fish/yui.fish: $(lua_files)
	@mkdir -p fish
	LUA_PATH="$(lua_path)" lua -e 'print(require("yui").fish)' > $@

autoload/lightline/colorscheme/yui.vim: $(lua_files)
	@mkdir -p autoload/lightline/colorscheme
	LUA_PATH="$(lua_path)" lua -e 'print(require("yui").lightline)' > $@

doc/yui.txt: $(lua_files)
	@mkdir -p doc
	LUA_PATH="$(lua_path)" lua -e 'print(require("yui").docs)' > $@

.PHONY: clean
clean:
	@rm -rf colors/yui.vim doc/yui.txt autoload/lightline/colorscheme/yui.vim alacritty/yui.yml fish/yui.fish
