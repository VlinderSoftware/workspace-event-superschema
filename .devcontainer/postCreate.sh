#!/bin/bash
set -e

echo "Running post-create setup..."

# Install Python dependencies if requirements exist
if [ -f "python-event-superschema/requirements.txt" ]; then
    echo "Installing Python dependencies..."
    python -m pip install --upgrade pip
    pip install -r python-event-superschema/requirements.txt
fi

# Install Node.js dependencies if package.json exists
if [ -f "node-event-superschema/package.json" ]; then
    echo "Installing Node.js dependencies..."
    cd node-event-superschema
    npm install
    cd ..
fi

# Restore .NET dependencies if .csproj exists
if [ -f "cs-event-superschema/"*.csproj ]; then
    echo "Restoring .NET dependencies..."
    cd cs-event-superschema
    dotnet restore
    cd ..
fi

echo "Post-create setup complete!"
