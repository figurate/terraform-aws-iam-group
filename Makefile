SHELL:=/bin/bash
include .env

.PHONY: all clean validate test docs format

all: validate test docs format

clean:
	rm -rf .terraform/

validate:
	$(TERRAFORM) init && $(TERRAFORM) validate && \
		$(TERRAFORM) -chdir=modules/administrator init && $(TERRAFORM) -chdir=modules/administrator validate && \
		$(TERRAFORM) -chdir=modules/codecommit init && $(TERRAFORM) -chdir=modules/codecommit validate && \
		$(TERRAFORM) -chdir=modules/ecr init && $(TERRAFORM) -chdir=modules/ecr validate && \
		$(TERRAFORM) -chdir=modules/poweruser init && $(TERRAFORM) -chdir=modules/poweruser validate

test: validate
	$(CHECKOV) -d /work

	$(TFSEC) /work

diagram:
	$(DIAGRAMS) diagram.py

docs: diagram
	$(TERRAFORM_DOCS) markdown ./ >./README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/administrator >./modules/administrator/README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/codecommit >./modules/codecommit/README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/ecr >./modules/ecr/README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/poweruser >./modules/poweruser/README.md

format:
	$(TERRAFORM) fmt -list=true ./ && \
		$(TERRAFORM) fmt -list=true ./modules/administrator && \
		$(TERRAFORM) fmt -list=true ./modules/codecommit && \
		$(TERRAFORM) fmt -list=true ./modules/ecr && \
		$(TERRAFORM) fmt -list=true ./modules/poweruser
