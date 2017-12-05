all: build

build:
	@latexmk

clean:
	@latexmk -c > /dev/null 2>&1

.PHONY: build
