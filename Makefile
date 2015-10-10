# Makefile for Golang Network Stack

SHELL = /bin/bash

# Basic building
install: clean depend build
depend:
	-go get -t ./...
build:
	go clean ./...
	go install ./...
clean:
	-rm -f *.test
	-rm -f *.cover
	-rm -f *.html
	go clean ./...

# line counting
lines:
	find ./ -name '*.go' | xargs wc -l

# Checks for style and errors
vet:
	go vet ./...
fmt:
	@echo "Formatting Files..."
	goimports -l -w ./
	@echo "Finished Formatting"
lint:
	golint ./...

