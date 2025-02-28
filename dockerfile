# Use the official Streamlit image
FROM streamlit/streamlit:latest

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8501 available to the world outside this container
EXPOSE 8501

# Run streamlit when the container launches
CMD ["streamlit", "run", "data_analysis_dashboard.py", "--server.port=8501", "--server.address=0.0.0.0"]
