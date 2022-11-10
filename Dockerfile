# syntax=docker/dockerfile:1

FROM arm64v8/python:3.12.0a1-slim-buster

#Set Relative Working Directory
WORKDIR /app

#Copy Requirements
COPY . .

#Install Packages
RUN pip3 install -r requirements.txt

#Copy all files from current direcory to image
COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

