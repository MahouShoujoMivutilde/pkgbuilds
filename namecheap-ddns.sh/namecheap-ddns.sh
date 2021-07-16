#!/usr/bin/env bash

RESPONSE=$(curl -w '\n' -sS "https://dynamicdns.park-your-domain.com/update?host=$HOST&domain=$DOMAIN&password=$PASS&ip=")

if [[ "${RESPONSE}" =~ "<Done>true</Done>" ]]; then
    echo "Your IP was updated at $(date)"
else
    echo -e "Something went wrong, please check your settings $(date)\nThe response returned was:\n${RESPONSE}"
fi
