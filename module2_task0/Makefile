

# main targets

build: main.go	## build the application

run: awesome-api	## run the application
	@./awesome-api >>./awesome.log 2>&1 &

stop:	## stop the running application
	@kill $(pgrep awesome-api)

clean:	## clean build environment
	rm awesome-api awesome-api.log

test:	## test the application
	curl http://localhost:9999/health

help:
	# needs extra '$' to avoid substitution
	@grep -E '^[a-z].*:.*##.*' Makefile | sed -E 's/^(.*?:).*?## *([a-zA-Z].*)$$/\1 \2/'

# inter

awesome-api: main.go
	go build
