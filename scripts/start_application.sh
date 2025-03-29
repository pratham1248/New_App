#!/bin/bash
echo "Starting Flask app with gunicorn..."
cd ./
gunicorn --bind 0.0.0.0:80 app:app  # Replace 'app:app' with the actual entry point of your Flask app
