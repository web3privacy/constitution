all:
	docker run --rm \
		--volume "$(shell pwd):/data" \
		--user $(shell id -u):$(shell id -g) \
		pandoc/extra:latest-ubuntu pandoc-metadata.yaml README.md [0-9]*.md \
			-o w3pn-constitution.pdf \
			--template eisvogel \
			--listings \
			--lua-filter=newpage.lua \
			--metadata date="$(shell date +%D)" \
			--metadata abstract=null