.DEFAULT_GOAL := start
.PHONY: start setup companion speaking outline

start:
	jupyter lab .

setup:
	bash scripts/setup.sh

companion:
	@echo "Exporting companion to PDF..."
	pandoc -s -o out/companion.pdf docs/COMPANION.md

speaking:
	@echo "Building speaking notes to PDF..."
	pandoc -s -o out/speaking.pdf docs/SPEAKING.md

outline:
	@echo "Building speaking notes to PDF..."
	pandoc -s -o out/outline.pdf docs/OUTLINE.md
