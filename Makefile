VERSION=1.0.0

all: deps release

deps:
	go get github.com/spf13/pflag

release: release-deps
	gox -osarch="!darwin/386" -output="build/{{.Dir}}_{{.OS}}_{{.Arch}}" .

release-deps:
	go install github.com/mitchellh/gox@latest

.PNONY: all release release-deps
