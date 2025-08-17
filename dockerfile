# Use a lightweight Python as parent image
FROM python:3.8-slim

#set the working directory in container
WORKDIR /app

#copy the current directory items into the container at /app
COPY . /app

#install the dependencies
RUN pip install -r requirements.txt

#Expose the port the app runs on
EXPOSE 5000

#command to run the application
CMD ["python", "app.py"]