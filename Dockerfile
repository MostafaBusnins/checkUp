# Base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . /app

# Install dependencies
RUN pip install --upgrade pip && pip install -r Requirements.txt

# Expose port (تأكد إنه نفس اللي في app.py)
EXPOSE 5001

# Run the app
CMD ["gunicorn", "--bind", "0.0.0.0:5001", "app:app"]