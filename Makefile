# Makefile for Solution Build and Deployment
# Author: John Elliott

ZIP_FILE = solution.zip
ASSETS = script.sh input.txt README.md

.DEFAULT_GOAL := help

help:
	@echo "=================================================="
	@echo "Solution Author: John Elliott (William Elliott)"
	@echo "=================================================="
	@echo "Available Makefile Actions:"
	@echo "  make build   - Bundles solution assets into $(ZIP_FILE)"
	@echo "  make deploy  - Commits $(ZIP_FILE) to git repository"
	@echo "  make help    - Displays this help message"
	@echo "=================================================="

build: $(ASSETS)
	zip -r $(ZIP_FILE) $(ASSETS)
	@echo "Successfully built $(ZIP_FILE)"

deploy: build
	git add $(ZIP_FILE) README.md Makefile
	git commit -m "Deploy solution package $(ZIP_FILE)"
	@echo "Successfully deployed package to git repository"
