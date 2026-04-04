# Use an official Python runtime as a parent image, a slim version to reduce the image size
FROM python:3.9-slim

# Set the working directory in the container to /app
WORKDIR /app

# Create a non-root user and set permissions for the application directory
RUN adduser --disabled-password --gecos '' appuser && chown -R appuser /app

# Copy the requirements file and install the dependencies
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY app/ .

# Switch to the non-root user
USER appuser

# Make port 5000 available to the world outside this container
EXPOSE 5000


CMD ["python", "app.py"]

#CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"] 