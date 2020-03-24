#!/bin/bash

exec gunicorn SSEclient.wsgi:application \
    --name sse \
    --bind 0.0.0.0:80 \
    --workers 3 \
    # --limit-request-line 20000 # This allows long-line requests
    # \
    #--log-level=info \
    #--log-file=./logs/sse.log \
    #--access-logfile=./logs/sse-access.log \