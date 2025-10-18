"""Basic tests to verify setup."""

import pytest


def test_import():
    """Test that the package can be imported."""
    import {{ cookiecutter.project_slug }}

    assert {{ cookiecutter.project_slug }}.__version__ == "0.1.0"


def test_sample_fixture(sample_data):
    """Test using a fixture."""
    assert sample_data["key"] == "value"
