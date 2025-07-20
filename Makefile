all:
	docker run --rm \
		--volume "$(shell pwd):/data" \
		--user $(shell id -u):$(shell id -g) \
		pandoc/extra:latest-ubuntu \
		pandoc-metadata.yaml [0-9]*.md \
			-o w3pn-constitution.pdf \
			--template eisvogel \
			--listings \
			--lua-filter=newpage.lua \
			--metadata date="$(shell date +"%Y/%m/%d")" \
			--metadata abstract=""
# pandoc/extra:latest-ubuntu
html:
	docker run --rm \
		--volume "$(shell pwd):/data" \
		--user $(shell id -u):$(shell id -g) \
		my-pandoc-sidenote:latest \
		pandoc-metadata.yaml [0-9]*.md \
          -o index.html \
          --metadata date="$(date +"%Y/%m/%d")" \
		  --wrap=none \
		  --from markdown+tex_math_single_backslash \
		  --to html5+smart \
		  --toc \
          --toc-depth=2 \
		  --katex \
          --standalone \
		  --template=./html-theme/template.html5 \
		  --css="./html-theme/css/theme.css" \
		  --css="./html-theme/css/tufte.css" \
		  --css="./html-theme/css/skylighting-solarized-theme.css" \
		  --filter pandoc-sidenote \
          --metadata title="Web3Privacy Now Constitution"