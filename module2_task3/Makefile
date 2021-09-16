

# main targets

build: awesome-api	## build the application

run: awesome-api	## run the application
	./awesome-api >>./awesome.log 2>&1 &

stop:	## stop the running application
	@kill "$(shell pgrep awesome-api)" 2>/dev/null && echo "killed" || echo "not running"

clean: stop	## clean build environment
	rm awesome-api awesome.log || true

test: unit-tests integration-tests	## test the application

help:	## show this help message
	# needs extra '$' to avoid substitution
	@grep -E '^[a-z].*:.*##.*' Makefile | sed -E 's/^(.*?:).*?## *([a-zA-Z].*)$$/\1 \2/'

lint:	## run the linter
	golangci-lint run

unit-tests:	## run unit tests
	@go test -v -short -coverprofile=coverage-units.out

integration-tests:	## integration tests
	@go test -v -tags=integration -coverprofile=coverage-integrations.out

# inter

awesome-api: main.go lint
	go build
