# Dockerfile

# Use the official Python image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Expose port 5000 to allow access to the Flask app
EXPOSE 5000

# Define the command to run the app
CMD ["python", "app.py"]
