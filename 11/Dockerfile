FROM postgres:11

LABEL maintainer="Neiro MC neiromc@gmail.com"

RUN apt update \
  && apt install postgresql-11-repack \
  && apt-get -f install \
  && apt-get -y autoremove \
  && apt-get -y clean \
  && apt-get -y autoclean


