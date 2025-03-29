#!/bin/bash
echo "Checking for Python installation..."

# Update package lists
yum update -y

# Install Python 3 and pip3 if they are not already installed
if ! command -v python3 &>/dev/null; then
    echo "Python 3 not found. Installing..."
    yum install -y python3
else
    echo "Python 3 is already installed."
fi

if ! command -v pip3 &>/dev/null; then
    echo "pip3 not found. Installing..."
    yum install -y python3-pip
else
    echo "pip3 is already installed."
fi

echo "Installing dependencies..."
pip3 install --upgrade pip  # Upgrade pip to the latest version
pip3 install Flask
pip3 install gunicorn
