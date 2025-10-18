#!/bin/bash
set -e

echo "🚀 Starting post-create setup..."

# Install Claude Code CLI
echo "🤖 Installing Claude Code CLI..."
curl -fsSL https://claude.ai/install.sh | bash

# Sync project dependencies with uv
echo "📋 Syncing project dependencies..."
uv sync --all-extras

# Install pre-commit hooks (only if in a git repository)
if git rev-parse --git-dir > /dev/null 2>&1; then
    echo "🪝 Installing pre-commit hooks..."
    uv run pre-commit install
else
    echo "⚠️  Skipping pre-commit hooks installation (not in a git repository)"
    echo "   Run 'git init' and then 'uv run pre-commit install' to set up hooks"
fi

echo "✅ Post-create setup complete!"
echo ""
echo "💡 Your development environment is ready:"
echo "   - Node.js: $(node --version 2>/dev/null || echo 'N/A')"
echo "   - npm: $(npm --version 2>/dev/null || echo 'N/A')"
echo "   - uv: $(uv --version 2>/dev/null || echo 'N/A')"
echo "   - Python venv: .venv/"
echo ""
echo "🎯 Next steps:"
echo "   - Run 'uv run pytest' to run tests"
echo "   - Run './scripts/quality-check.sh' for full quality checks"
echo "   - Use 'uv run' to execute commands in the project environment"
