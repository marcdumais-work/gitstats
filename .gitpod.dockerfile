FROM gitpod/workspace-full-vnc:latest

# Docker build does not rebuild an image when a base image is changed, increase this counter to trigger it.
ENV TRIGGER_REBUILD 3

# Install custom tools, runtime, etc.
RUN sudo apt-get update \
    # window manager
    && sudo apt-get install -y jwm \
    # gitstats dependencies
    && sudo apt-get install -y gnuplot 

# ENV PATH=$HOME/.nvm/versions/node/v${NODE_VERSION}/bin:$PATH
