# Use official Python image as base
FROM python:3.12-slim

# Set working dir inside container
WORKDIR /flask-app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY flask-app.py .

# Expose port app runs on
EXPOSE 5000

# Command to run app
CMD ["python", "flask-app.py"]
