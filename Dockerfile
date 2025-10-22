# Use Python base image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy project files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose default Flask port (optional if you use Flask later)
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]