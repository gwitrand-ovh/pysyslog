#!/bin/bash

if [[ -z "${PYSYSLOG_PORT}" ]]; then
    echo "Missing env var PYSYSLOG_PORT"
    exit;
fi

docker build -t pysyslog-py-3.8.10 .

echo "Build done, now starting docker with port ${PYSYSLOG_PORT}"

docker run -d --rm -p ${PYSYSLOG_PORT}:514/udp pysyslog-py-3.8.10

echo "To follow the logs enter 'docker logs -f {token given above}'"

echo "To stop the container 'docker kill {token given above}'"