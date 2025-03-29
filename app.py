from flask import Flask

# Create a Flask application instance
app = Flask(__name__)

# Define a route for the home page
@app.route('/')
def home():
    return "Hello, World! This is my flask application updated code123"

# Run the Flask application
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)

