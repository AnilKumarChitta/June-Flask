# Use the official Python image
FROM python:3.12.4-bookworm

# Set the working directory
WORKDIR /flask-docker

# Copy the requirements file and install dependencies
RUN python3 -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# Copy your application code
COPY . .

# Set the environment variable for Flask
ENV FLASK_APP=JuneFlask.py

# Command to run the Flask app
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]