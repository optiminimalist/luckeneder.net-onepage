FROM ubuntu:15.04

RUN apt-get update
RUN apt-get -y install python-pip python
RUN apt-get -y install python-dev 
RUN apt-get -y install libffi-dev
RUN apt-get -y install node-less yui-compressor

WORKDIR /root
ADD . /root
RUN pip install -r requirements.txt


WORKDIR /root

CMD ["python", "app.py"]