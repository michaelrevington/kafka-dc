FROM mongo:latest

COPY config-replica.js / 
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y curl
RUN apt-get install -y python3-pip
RUN apt-get install -y nano
RUN apt-get install -y bsdmainutils
RUN apt-get install -y kafkacat
RUN apt-get install -y git
RUN apt-get install -y dos2unix
RUN git clone https://github.com/RWaltersMA/stockgenmongo.git


RUN dos2unix /usr/local/bin/* 

