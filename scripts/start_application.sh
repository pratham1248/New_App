#!/bin/bash
set -e  # Exit on error
source ~/.bash_profile
source ~/.bashrc
source /path/to/venv/bin/activate  # Activate virtual environment if applicable
echo "Environment Variables:"
env

echo "Starting Flask app with gunicorn..."
cd ..
gunicorn --bind 0.0.0.0:8080 app:app  # Replace 'app:app' with the actual entry point of your Flask app
