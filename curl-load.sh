#!/bin/bash -eu

MAX_REQ=30
# URL="localhost:4040/"
URL="138.2.163.144:4040/"
TIMESTAMP=$(date +%s)

COUNTER=1
while [ "$COUNTER" -le $MAX_REQ ]
do
  echo "------------ Load request #${COUNTER} ------------"
  echo ""
  curl -v -H "X-Request-ID: ahoj-${COUNTER}-${TIMESTAMP}" "${URL}"
  echo ""
  echo ""
  ((COUNTER++))
done
