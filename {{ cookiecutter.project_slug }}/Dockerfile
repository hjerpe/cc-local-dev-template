ARG BASE_IMAGE=your-dockerhub-username/python-base:latest
FROM ${BASE_IMAGE}

USER root
# Add any project-specific system dependencies here
# RUN apt-get update && apt-get install -y <your-packages>

USER $USER
# Copy your project files
COPY . .
