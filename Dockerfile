from python:3.7-slim

# Set the working directory in the container
workdir /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY . .

# Specify the command to run on container start
CMD ["flower", "--broker=redis://redis:6379", "--port=5555"]
