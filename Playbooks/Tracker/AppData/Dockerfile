# Use Python official image
FROM python:3.9-slim

# Set working directory in the container
WORKDIR /app

# Install system dependencies (for MariaDB and Python libraries)
#RUN apt-get update && apt-get install -y \
#    gcc \
#    libmysqlclient-dev 
#    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY ./app /app

# Set environment variables
ENV TELEGRAM_TOKEN=${TELEGRAM_TOKEN}
ENV DB_PASSWORD=${DB_PASSWORD}

# Expose the port the app runs on
EXPOSE 8000

# Run the Application
#CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
CMD ["python", "main.py"]