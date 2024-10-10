.PHONY: all
all: colors/yui_dark.vim colors/yui.vim doc/yui.txt autoload/lightline/colorscheme/yui_dark.vim autoload/lightline/colorscheme/yui.vim alacritty/yui_dark.toml alacritty/yui_dark.yml alacritty/yui_light.yml alacritty/yui_light.toml alacritty/yui_dark_msg.sh alacritty/yui_light_msg.sh fish/yui.fish fish/yui_dark.fish

lua_path = src/?.lua;src/lib/?.lua
lua_files = $(shell find src)

colors/yui.vim: $(lua_files)
	@mkdir -p colors
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").light.nvim)' > $@

colors/yui_dark.vim: $(lua_files)
	@mkdir -p colors
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").dark.nvim)' > $@

alacritty/yui_light.yml: $(lua_files)
	@mkdir -p alacritty
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").light.alacritty.yaml)' > $@

alacritty/yui_light.toml: $(lua_files)
	@mkdir -p alacritty
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").light.alacritty.toml)' > $@

alacritty/yui_dark.yml: $(lua_files)
	@mkdir -p alacritty
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").dark.alacritty.yaml)' > $@

alacritty/yui_dark.toml: $(lua_files)
	@mkdir -p alacritty
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").dark.alacritty.toml)' > $@

alacritty/yui_dark_msg.sh: $(lua_files)
	@mkdir -p alacritty
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").dark.alacritty.msg)' > $@

alacritty/yui_light_msg.sh: $(lua_files)
	@mkdir -p alacritty
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").light.alacritty.msg)' > $@

fish/yui.fish: $(lua_files)
	@mkdir -p fish
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").light.fish)' > $@

fish/yui_dark.fish: $(lua_files)
	@mkdir -p fish
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").dark.fish)' > $@

autoload/lightline/colorscheme/yui.vim: $(lua_files)
	@mkdir -p autoload/lightline/colorscheme
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").light.lightline)' > $@

autoload/lightline/colorscheme/yui_dark.vim: $(lua_files)
	@mkdir -p autoload/lightline/colorscheme
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").dark.lightline)' > $@

doc/yui.txt: $(lua_files)
	@mkdir -p doc
	LUA_PATH="$(lua_path)" lua -e 'print(require("themes/nvim/docs"):render())' > $@

.PHONY: clean
clean:
	@rm -rf colors/ autoload/lightline/ alacritty/ fish/
