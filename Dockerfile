# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements first (better for caching)
COPY app/requirements.txt .
RUN pip install -r requirements.txt

# Copy the application code
COPY app/app.py .

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]