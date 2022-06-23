FROM python:3.7-alpine
RUN apk update && apk install python3-dev 
RUN mkdir /app
COPY . /app/
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENV FLASK_APP=red.py
CMD flask run --host=0.0.0.0 -p 8080
