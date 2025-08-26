# Makefile para comandos comunes
.PHONY: help install test lint format clean run

help: ## Mostrar ayuda
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Instalar dependencias
	uv sync

test: ## Ejecutar tests
	uv run pytest

test-cov: ## Ejecutar tests con coverage
	uv run pytest --cov=app --cov-report=html

lint: ## Ejecutar linting
	uv run ruff check src tests
	uv run mypy src

format: ## Formatear código
	uv run ruff format src tests
	uv run ruff check --fix src tests

clean: ## Limpiar archivos temporales
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete
	find . -type d -name "*.egg-info" -exec rm -rf {} +
	rm -rf build/ dist/ .coverage htmlcov/ .pytest_cache/

run: ## Ejecutar aplicación
	uv run app

dev: ## Ejecutar en modo desarrollo
	uv run python -m app.main
