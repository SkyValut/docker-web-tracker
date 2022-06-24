FROM ubuntu:latest
RUN apt update -y && apt install python3 -y && apt install python3-pip -y 
RUN mkdir /app
COPY . /app/
WORKDIR /app
RUN pip3 install -r requirements.txt
EXPOSE 5000
ENV FLASK_APP=red.py
CMD flask run --host=0.0.0.0 -p 8080
