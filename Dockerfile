FROM python:3.13
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN apt-get update
RUN apt install -y python3 
RUN apt install -y python3-pip
RUN python -m pip install --upgrade pip
RUN pip3 install -r requirements.txt
COPY . /code/