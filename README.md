# py-beginner-projects

Projects to help me learn and practice Python fundamentals.

## 📋 Prerequisites

- **Python 3.12+**
- **uv** (dependency manager)

## 🛠️ Setup

### My setup commands (for reference):

```bash
uv init
pyenv local 3.13.3
uv venv
uv add --dev ruff mypy pytest pytest-cov pre-commit
uv run pre-commit install
uv run pre-commit run --all-files
```

### Your setup:

```bash
git clone https://github.com/sergiomarquezdev/py-beginner-projects
cd py-beginner-projects
uv sync
make run    # or: uv run app
```

## 🎯 Usage

### Run the application

```bash
make run        # Execute the app
make dev        # Run in development mode
```

### Testing

```bash
make test       # Run all tests
make test-cov   # Run tests with coverage report
```

### Development

```bash
make format     # Format code with ruff
make lint       # Run linting (ruff + mypy)
make clean      # Clean temporary files
```

### Available commands

```bash
make help       # Show all available commands
```

## 🚀 Getting Started

1. Clone the repository
2. Run `uv sync` to install dependencies
3. Run `make test` to verify everything works
4. Start coding in `src/app/main.py`

Happy coding! 🐍
