SHELL:=/bin/bash

.PHONY: all clean test docs format

all: test docs format

clean:
	rm -rf .terraform/

test:
	terraform init && terraform validate

docs:
	docker run --rm -v "${PWD}:/work" tmknom/terraform-docs markdown ./ >./README.md

format:
	terraform fmt -list=true ./
