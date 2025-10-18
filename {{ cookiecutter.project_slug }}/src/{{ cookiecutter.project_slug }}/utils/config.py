"""Configuration management utilities."""

import os
from pathlib import Path
from typing import Any, Dict

import yaml


def load_config(config_name: str = "default") -> Dict[str, Any]:
    """
    Load configuration from YAML file.

    Args:
        config_name: Name of the config file (without .yaml extension)

    Returns:
        Dictionary containing configuration settings
    """
    config_path = Path("config") / f"{config_name}.yaml"

    if not config_path.exists():
        raise FileNotFoundError(f"Config file not found: {config_path}")

    with open(config_path, "r") as f:
        config = yaml.safe_load(f)

    return config


def get_env_or_config(key: str, config: Dict[str, Any], default: Any = None) -> Any:
    """
    Get value from environment variable or config, with environment taking precedence.

    Args:
        key: Configuration key
        config: Configuration dictionary
        default: Default value if not found

    Returns:
        Configuration value
    """
    return os.getenv(key.upper(), config.get(key, default))
