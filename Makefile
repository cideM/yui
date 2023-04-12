.PHONY: all
all: colors/yui.vim doc/yui.txt

colors/yui.vim: template/*.lua
	@mkdir -p colors
	LUA_PATH="template/?.lua" lua template/gen_theme.lua > $@

doc/yui.txt: template/*.lua
	@mkdir -p doc
	LUA_PATH="template/?.lua" lua template/gen_docs.lua > $@

colors/alacritty.yaml: template/*.lua
	@mkdir -p colors
	LUA_PATH="template/?.lua" lua template/gen_alacritty.lua > $@

.PHONY: clean
clean:
	@rm -f colors/yui.vim doc/yui.txt colors/alacritty.yaml
