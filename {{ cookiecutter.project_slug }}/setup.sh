#!/bin/bash

# Modern uv-based environment setup
echo "🔧 Setting up development environment..."

# Check if uv is installed
if ! command -v uv &> /dev/null; then
    echo "📦 Installing uv package manager..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    source ~/.bashrc
fi

echo "📋 Syncing project dependencies..."
# Install all dependencies including dev and optional extras
uv sync --all-extras

echo "🪝 Installing pre-commit hooks..."
uv run pre-commit install

echo "✅ Environment initialization complete!"
echo "💡 Use 'uv run python ...' to execute commands in the project environment"
echo "💡 Use 'uv run pytest' to run tests"
echo "💡 Use 'scripts/quality-check.sh' for full quality gate"
