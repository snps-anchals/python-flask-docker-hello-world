# Use the official Python image from DockerHub  
FROM python:3.8-slim  
  
# Set environment variables  
ENV PYTHONDONTWRITEBYTECODE=1  
ENV PYTHONUNBUFFERED=1  
  
# Set working directory in the container  
WORKDIR /app  
  
# Copy requirements.txt and install dependencies  
COPY requirements.txt /app/  
RUN pip install --upgrade pip && pip install -r requirements.txt  
  
# Copy the rest of the application code  
COPY . /app/  
  
# Expose port (default Flask port)  
EXPOSE 5000  
  
# Run the application  
CMD ["python", "app.py"]  
