#!/bin/bash
echo "Stopping Flask app..."
pkill gunicorn  # This will kill any running gunicorn processes
