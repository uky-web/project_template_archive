FROM gitpod/workspace-full:latest
SHELL ["/bin/bash", "-c"]

# Install ddev
RUN brew update && brew install drud/ddev/ddev

