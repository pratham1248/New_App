#!/bin/bash
echo "Upgrading Python to 3.11..."

# Update package lists
yum update -y

# Add Python 3.11 repository if necessary
if ! yum list | grep -q "python3.11"; then
    echo "Adding Python 3.11 repository..."
    yum install -y https://repo.ius.io/ius-release.rpm
fi

# Install Python 3.11
echo "Installing Python 3.11..."
yum install -y python3.11

# Check if Python 3.11 was installed successfully
if command -v python3.11 &>/dev/null; then
    echo "Python 3.11 installed successfully: $(python3.11 --version)"
else
    echo "Failed to install Python 3.11. Exiting."
    exit 1
fi

# Update alternatives to use Python 3.11 as default
echo "Updating alternatives to set Python 3.11 as default..."
sudo alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1
sudo alternatives --config python3

# Install pip3 for Python 3.11 and other dependencies
echo "Installing dependencies..."
python3.11 -m ensurepip --upgrade
python3.11 -m pip install --upgrade pip
python3.11 -m pip install Flask
python3.11 -m pip install gunicorn
python3.11 -m pip install uwsgi


echo "Python upgrade and setup completed!"
