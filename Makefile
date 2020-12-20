.PHONY: all
all:
	bundle exec jekyll serve --livereload

.PHONY: build
build:
	bundle exec jekyll build

.PHONY: clean
clean:
	bundle exec jekyll clean
