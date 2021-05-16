JEKYLL_VERSION:=3.8

.PHONY: serve
serve:
	docker run --rm -it \
		--volume="${PWD}:/srv/jekyll" \
		--volume="${PWD}/vendor/bundle:/usr/local/bundle" \
		-p 4000:4000 jekyll/jekyll:$(JEKYLL_VERSION) \
		jekyll serve

.PHONY: build
build:
	docker run --rm -it \
		--volume="${PWD}:/srv/jekyll" \
		--volume="${PWD}/vendor/bundle:/usr/local/bundle" \
		jekyll/jekyll:$(JEKYLL_VERSION) \
		jekyll build
