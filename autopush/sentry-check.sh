#!/bin/bash

source config.sh

echo "--------------------------------"
echo "SENTRY TEST"
echo "--------------------------------"
echo
CMD="dig +short myip.opendns.com @resolver1.opendns.com"
IP=`$CMD`
echo "MY IP: $IP"
echo
echo
curl -s https://$HOST_UPDATES/v1/err/crit | python -mjson.tool
echo
echo
