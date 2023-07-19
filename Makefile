SHELL := bash

outdir := ./out
bin_prefix := goex-

# FIXME: CGO_ENABLED=1 needed for sqlite example, this will hang!
.PHONY: all
all:
	go build -o $(outdir)/ ./cmd/...

.PHONY: install
install:
	go install ./cmd/...

.PHONY: uninstall
uninstall:
	rm $(GOBIN)/$(bin_prefix)*

.PHONY: clean
clean:
	rm -rf $(outdir) example.db*