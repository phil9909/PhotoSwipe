
.PHONY: build

build: src/css/default-skin/default-skin.png
	npm install
	npm run build


src/css/default-skin/default-skin.png: src/css/default-skin/default-skin.svg
	inkscape --without-gui --export-png=$@.inkscape $<
	oxipng -s -Z -o max --out $@ $@.inkscape
