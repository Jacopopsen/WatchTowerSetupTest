# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

#Set Relative Working Directory
WORKDIR /app

#Copy Requirements
COPY requirements.txt requirements.txt

#Install Packages
RUN pip3 install -r requirements.txt

#Copy all files from current direcory to image
COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

