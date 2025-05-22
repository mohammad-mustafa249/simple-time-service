# Use lightweight Python image
FROM python:3.12-slim

# Create a non-root user
RUN useradd -m appuser

# Set working directory
WORKDIR /home/appuser/app

# Copy code
COPY --chown=appuser:appuser . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Switch to non-root user
USER appuser

# Expose port
EXPOSE 8080

# Start the app
CMD ["python", "app.py"]
