# Use the official Python image as a base image
FROM python:3.10.1-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask and any other dependencies
RUN pip install -r requirements.txt

# Expose the port on which your Flask app will run
EXPOSE 5000

# Define the command to run your Flask app when the container starts
CMD ["sh", "-c", "FLASK_APP=hello.py flask run --host=0.0.0.0"]
