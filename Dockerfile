FROM python:3.8.10

RUN apt-get update
RUN apt-get upgrade -y

COPY pysyslog.py /app/pysyslog.py

WORKDIR /app

EXPOSE 514

CMD ["/app/pysyslog.py", "-l", "logs.log", "-p", "514", "-i", "0.0.0.0"]