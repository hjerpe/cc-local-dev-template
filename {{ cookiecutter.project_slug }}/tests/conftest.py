"""Pytest configuration and shared fixtures."""

import pytest


@pytest.fixture
def sample_data():
    """Provide sample data for testing."""
    return {"key": "value"}
