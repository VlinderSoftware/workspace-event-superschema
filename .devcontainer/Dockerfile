# Multi-language development container for event-superschema projects
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install common dependencies
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    build-essential \
    cmake \
    git \
    curl \
    wget \
    ca-certificates \
    gnupg \
    lsb-release

# Install Python 3.11+
RUN apt-get -y install --no-install-recommends \
    python3 \
    python3-pip \
    python3-venv \
    && ln -s /usr/bin/python3 /usr/local/bin/python

# Install Node.js 20.x LTS
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

# Install .NET SDK 8.0
RUN wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh \
    && chmod +x dotnet-install.sh \
    && ./dotnet-install.sh --channel 8.0 --install-dir /usr/share/dotnet \
    && ln -s /usr/share/dotnet/dotnet /usr/local/bin/dotnet \
    && rm dotnet-install.sh

# Install C++ build tools and libraries
RUN apt-get -y install --no-install-recommends \
    g++ \
    clang \
    clang-format \
    clang-tidy \
    lldb \
    ninja-build \
    libboost-all-dev

# Install TeX Live for paper writing
RUN apt-get -y install --no-install-recommends \
    texlive-base \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    latexmk

# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Create workspace directory
RUN mkdir -p /workspace
WORKDIR /workspace
