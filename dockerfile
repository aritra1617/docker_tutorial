# Use a lightweight Python image as parent image
FROM python:3.8-slim

#set the working directory in container
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]