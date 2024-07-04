.SILENT: clean

.DEFAULT_GOAL := help

playground: ## Start a python playground environment
	@make check-docker
	@docker run -it --rm --name python-playground \
		-v $(PWD):/app -v ./runtime/.cache:/root/.cache \
		-w /app python:3.12.4 bash

install: ## Install dependencies
	@make check-python3
	@pip install setuptools wheel twine
	@pip install --no-cache-dir -r requirements.txt
	@python3 ./dumppackage/main.py

build: ## Build package
	@make check-python3
	@python3 setup.py sdist

upload: ## Upload package to PyPI
	@make check-python3
	@make check-token
	@python3 -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*

check-docker: ## Check if Docker is installed
	@docker --version > /dev/null 2>&1 || (echo "Docker is not installed. Please install Docker and try again." && exit 1)

check-python3: ## Check if Python 3 is installed
	@python3 --version > /dev/null 2>&1 || (echo "Python 3 is not installed. Please install Python 3 and try again."; exit 1)

help: ## Show this help message
	@echo "Usage: make [command]"
	@echo ""
	@echo "Commands available:"
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-15s %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort
