# Cookiecutter Python Development Template

A Python project starter with `uv` package management and Python 3.12.

## Quick Start

### Prerequisites

Install cookiecutter:

```bash
# Using pip
pip install cookiecutter

# Or using uv
uv tool install cookiecutter
```

### Create a New Project

```bash
cookiecutter https://github.com/hjerpe/cc-local-dev-template.git
```

This will prompt you for:
- `project_name`: Your project name (e.g., "My Project")

### After Creating Your Project

```bash
cd your-project-name

# Run setup script to install dependencies
./setup.sh
```

## Project Structure

The generated project includes:

```
your-project/
├── src/your_project_package/     # Main package source
│   ├── data/                      # Data processing modules
│   ├── models/                    # ML models
│   └── utils/                     # Utilities (config, logging)
├── notebooks/                     # Jupyter notebooks
├── tests/                         # Test files
├── scripts/                       # Helper scripts
├── config/                        # Configuration files
├── pyproject.toml                 # Project configuration
├── setup.sh                       # Environment setup script
├── CLAUDE.md                      # Claude Code guidance
└── README.md                      # Project documentation
```

## Development Workflow

```bash
# Format code
./scripts/format.sh

# Run tests
./scripts/test.sh

# Run full quality check
./scripts/quality-check.sh
```

## Optional Dependencies

The template demonstrates Python package capabilities with optional dependency groups:

```bash
# Install with ML packages (pandas, numpy, scikit-learn)
uv sync --extra ml

# Install with notebook support (jupyter, ipykernel)
uv sync --extra notebook

# Install with development tools (pytest, black, isort, mypy)
uv sync --extra dev

# Install all extras
uv sync --all-extras
```
