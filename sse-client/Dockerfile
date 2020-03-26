FROM python:3.7-slim

ARG VER
ARG TA_URL
ARG SSE_URL
ARG SALT_VALUE
ARG IV_VALUE

# create root directory for our project in the container
ENV PROJECT_ROOT=/srv/SSEClient

# install wget then download and extract source code to project root
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://github.com/UoW-CPC/Asclepios-Client/archive/${VER}.tar.gz && \
    tar -zxf ${VER}.tar.gz && \
    rm -f ${VER}.tar.gz && \ 
    mv Asclepios-Client-${VER} ${PROJECT_ROOT} && \
    apt-get remove -y --purge wget && \
    apt-get autoremove -y --purge && \
    rm -rf /var/lib/apt/lists/*

# set the working directory to the project root
WORKDIR $PROJECT_ROOT

# install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# configure client
RUN sed -i -e "s|ta_url|${TA_URL}|" sse/static/js/sse.js && \
    sed -i -e "s|sse_url|${SSE_URL}|" sse/static/js/sse.js && \
    sed -i -e "s|salt_value|${SALT_VALUE}|" sse/static/js/sse.js && \
    sed -i -e "s|iv_value|${IV_VALUE}|" sse/static/js/sse.js

ADD entrypoint.sh /usr/local/bin/entrypoint.sh
CMD ["/usr/local/bin/entrypoint.sh"]