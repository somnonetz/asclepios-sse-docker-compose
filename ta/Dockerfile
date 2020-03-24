FROM python:3.7-slim

ARG VER

# create root directory for our project in the container
ENV PROJECT_ROOT=/srv/TA

# install wget then download and extract source code to project root
RUN apt-get update && \
    apt-get install -y wget postgresql-client && \
    wget https://github.com/jmz-b/Asclepios-TrustedAuthority/archive/v${VER}.tar.gz && \
    tar -zxf v${VER}.tar.gz && \
    rm -f ${VER}.tar.gz && \ 
    mv Asclepios-TrustedAuthority-${VER} ${PROJECT_ROOT} && \
    apt-get remove -y --purge wget && \
    apt-get autoremove -y --purge && \
    rm -rf /var/lib/apt/lists/*

# set the working directory to the project root
WORKDIR $PROJECT_ROOT

# install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

ADD entrypoint.sh /usr/local/bin/entrypoint.sh
CMD ["/usr/local/bin/entrypoint.sh"]