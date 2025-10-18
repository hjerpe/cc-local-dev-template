#!/bin/bash
# Run all quality checks
echo "🚀 Running quality checks..."

echo "1/5 📋 Running tests..."
uv run pytest
if [ $? -ne 0 ]; then
    echo "❌ Tests failed!"
    exit 1
fi

echo "2/5 🔍 Checking code formatting..."
uv run black --check --diff .
if [ $? -ne 0 ]; then
    echo "❌ Code formatting issues found!"
    exit 1
fi

echo "3/5 📄 Checking import sorting..."
uv run isort --check-only --diff .
if [ $? -ne 0 ]; then
    echo "❌ Import sorting issues found!"
    exit 1
fi

echo "4/5 🔎 Running type checks..."
uv run mypy src/
if [ $? -ne 0 ]; then
    echo "❌ Type checking failed!"
    exit 1
fi

echo "5/5 🧹 Code quality checks complete!"
echo "✅ All quality checks passed!"
