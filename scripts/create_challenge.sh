#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/challenges"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "challenge": {
        "name": "pepe",
        "goal": "lost weight",
        "start_day": "2017-09-12",
        "end_day": "2017-10-12",
        "status": "true",
        "user_id": "1"
      }
  }'

echo
