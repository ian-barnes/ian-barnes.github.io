.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: serve
serve:  ## Run a local Jekyll server
	bundle exec jekyll serve --livereload

.PHONY: build
build:  ## Build the static site
	bundle exec jekyll build

.PHONY: clean
clean:  ## Clean up the static site
	bundle exec jekyll clean

.PHONY: update
update:  ## Update dependencies
	bundle update
