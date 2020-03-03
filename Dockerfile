FROM ubuntu:18.04
RUN apt-get clean
RUN apt-get update -y --fix-missing
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
COPY . /lib/testing
WORKDIR /lib/testing

RUN pip3 install -r requirement.txt
