# {{ cookiecutter.project_slug }}

AI/ML development project created with modern Python tooling.

## Features

- **Modern Package Management**: Uses `uv` for fast, reliable dependency management
- **Python 3.12**: Latest Python version with improved performance
- **Source Layout**: Clean `src/` layout following Python best practices
- **Type Safety**: Configured with mypy for static type checking
- **Code Quality**: Pre-commit hooks with black, isort, and autoflake
- **Testing**: pytest setup with coverage reporting
- **Notebooks**: Jupyter notebook support for exploration and analysis
- **Docker**: DevContainer configuration for consistent development environments

## Quick Start

### Installation

```bash
# Run the setup script to install uv and dependencies
./setup.sh
```

This will:
- Install uv package manager (if not already installed)
- Sync all project dependencies
- Install pre-commit hooks
- Set up Jupyter kernel

### Development

```bash
# Run commands using uv
uv run python -m {{ cookiecutter.project_slug }}_package

# Run tests
uv run pytest

# Or use the helper script
./scripts/test.sh

# Format code
./scripts/format.sh

# Run full quality check (tests, formatting, type checking)
./scripts/quality-check.sh
```

### Adding Dependencies

Edit `pyproject.toml` and add your dependency, then:

```bash
uv sync
```

## Project Structure

```
.
├── src/{{ cookiecutter.project_slug }}_package/  # Main package source code
│   ├── data/                                      # Data processing modules
│   ├── models/                                    # ML models
│   └── utils/                                     # Utility functions (config, logging)
├── notebooks/                                     # Jupyter notebooks
├── tests/                                         # Test files
├── scripts/                                       # Helper scripts
├── config/                                        # Configuration files (YAML)
├── pyproject.toml                                 # Project configuration & dependencies
└── setup.sh                                       # Environment setup script
```

## Configuration

Configuration files are stored in `config/` directory:
- `config/config-prod.yml`: Production configuration
- `config/config-ver.yml`: Version/development configuration

Use the utility functions in `src/{{ cookiecutter.project_slug }}_package/utils/config.py` to load configurations.

## Docker Development

The project includes a DevContainer configuration:

```bash
# Build the Docker image
./docker-build.sh

# Or use VS Code DevContainers extension
```

## Code Quality

This project uses several tools to maintain code quality:

- **black**: Code formatting
- **isort**: Import sorting
- **mypy**: Static type checking
- **pytest**: Testing framework
- **pre-commit**: Git hooks for automated checks

Run all checks with:

```bash
./scripts/quality-check.sh
```

## License

MIT
