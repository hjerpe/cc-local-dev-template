#!/bin/bash
# Build Docker image for AI/ML development environment
set -e

# Configuration
PROJECT_NAME="{{ cookiecutter.project_slug }}"
IMAGE_NAME="${PROJECT_NAME}_ai_ml_box"
IMAGE_TAG="latest"
FULL_IMAGE_NAME="${IMAGE_NAME}:${IMAGE_TAG}"

echo "Building Docker image: ${FULL_IMAGE_NAME}"

# Build the image
docker build -f Dockerfile.base -t "${FULL_IMAGE_NAME}" .

echo "Successfully built image: ${FULL_IMAGE_NAME}"
echo ""
echo "To use this image with VS Code Dev Containers:"
echo "  1. Open this project in VS Code"
echo "  2. Press Cmd+Shift+P (Mac) or Ctrl+Shift+P (Windows/Linux)"
echo "  3. Select 'Dev Containers: Reopen in Container'"
