# Use an official Python runtime as the base image
FROM python:3.10-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements/backend.in .

# Install the project dependencies
RUN pip install --no-cache-dir -r backend.in

# Copy the rest of the application code into the container
COPY . .

# Specify the command to run when the container starts
CMD ["uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]
