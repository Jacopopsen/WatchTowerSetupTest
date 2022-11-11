# syntax=docker/dockerfile:1

FROM alpine:3.16
RUN apk add curl

#Set Relative Working Directory
WORKDIR /app

#Copy Requirements
COPY . .

#Install Packages
RUN pip3 install -r requirements.txt

#Copy all files from current direcory to image
COPY . .

CMD [ "python3","-u", "-m" , "flask", "run", "--host=0.0.0.0"]

