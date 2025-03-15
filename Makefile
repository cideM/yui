.PHONY: all
all: colors/yui_dark.vim colors/yui.vim doc/yui.txt autoload/lightline/colorscheme/yui_dark.vim autoload/lightline/colorscheme/yui.vim alacritty/yui_dark.toml alacritty/yui_dark.yml alacritty/yui_light.yml alacritty/yui_light.toml alacritty/yui_dark_msg.sh alacritty/yui_light_msg.sh fish/yui.fish fish/yui_dark.fish css/yui.css css/yui_light.css css/yui_dark.css html/index.html ghostty/yui_dark ghostty/yui_light

lua_path = src/?.lua;src/lib/?.lua
lua_files = $(shell find src)

css/yui.css: $(lua_files)
	@mkdir -p css
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").light.css.light_dark)' > $@

css/yui_light.css: $(lua_files)
	@mkdir -p css
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").light.css.light)' > $@

html/index.html: css/yui.css src/testhtml.lua ./index.html $(lua_files)
	@mkdir -p html
	LUA_PATH="$(lua_path)" lua src/testhtml.lua > $@

css/yui_dark.css: $(lua_files)
	@mkdir -p css
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").dark.css.dark)' > $@

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

ghostty/yui_dark: $(lua_files)
	@mkdir -p ghostty
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").dark.ghostty)' > $@

ghostty/yui_light: $(lua_files)
	@mkdir -p ghostty
	LUA_PATH="$(lua_path)" lua -e 'print(require("main").light.ghostty)' > $@

.PHONY: clean
clean:
	@rm -rf colors/ autoload/lightline/ alacritty/ fish/ ghostty/ doc/ css/ html/
