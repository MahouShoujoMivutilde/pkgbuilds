#!/usr/bin/env bash

RESPONSE=$(curl -sSk "https://www.duckdns.org/update?domains=${SUBDOMAINS}&token=${TOKEN}&ip=")

if [ "${RESPONSE}" = "OK" ]; then
    echo "Your IP was updated at $(date)"
else
    echo -e "Something went wrong, please check your settings $(date)\nThe response returned was:\n${RESPONSE}"
fi
