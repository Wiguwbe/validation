

build:		## Build the project
	hugo

clean:		## Clean the dist folder
#	rm -r dist

post:		## Create a new post
	hugo new posts/${POST_NAME}.md
	sed -i "s/${POST_NAME}/${POST_TITLE}/i" content/posts/${POST_NAME}.md

check:		## lint markdown
	markdownlint ./content/posts
	for md in ./content/posts/*.md; do markdown-link-check -q $${md}; done

validate:	## validate html files
	./w3c_validator.py ./dist/index.html 2>&1 || true

help:		## Display this help message
	@grep '^[a-z].*##' Makefile | tr -s '\t' ' ' | sed 's/## *//'
