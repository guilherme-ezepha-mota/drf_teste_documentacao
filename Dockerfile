FROM ubuntu:latest
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN apt-get update && apt install python3-pip -y
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
ENTRYPOINT [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ] 