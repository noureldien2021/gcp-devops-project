#base image
FROM python:3.8-slim-buster

#create directory
WORKDIR /app

#copy indeependencies
COPY requirements.txt requirements.txt 

#copy files
COPY . .

#run command
RUN pip3 install -r requirements.txt


CMD [ "python3", "app.py" ]


EXPOSE 5000

