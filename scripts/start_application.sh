#!/bin/bash
echo "Starting Flask app with gunicorn..."
echo "Current working directory: $(pwd)"
cd "$PWD"
#whats
python3 -m waitress --port=8080 app:app
#uwsgi --http :8080 --wsgi-file app.py --callable app
#python app.py
#gunicorn --workers 1 --bind 0.0.0.0:8080 app:app
 # Replace 'app:app' with the actual entry point of your Flask app
