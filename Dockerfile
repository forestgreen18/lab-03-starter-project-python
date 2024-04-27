# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the entire application code into the container first
COPY . .

# Copy the requirements file into the container
COPY requirements/backend.in .

# Install the project dependencies
RUN pip install --no-cache-dir -r backend.in

# Specify the command to run when the container starts
CMD ["uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]
