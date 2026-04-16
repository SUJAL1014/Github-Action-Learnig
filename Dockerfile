# Use the official Python base image from Docker Hub
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file first to leverage Docker's cache
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Inform Docker that the container listens on port 5000
EXPOSE 5000

# Set environment variables
ENV FLASK_APP=app.py

# Specify the command to run the application
CMD ["flask", "run", "--host=0.0.0.0"]
