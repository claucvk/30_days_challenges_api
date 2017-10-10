#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/challenges"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "challenge": {
      "name": "'"${NAME}"'",
      "goal": "'"${GOAL}"'",
      "start_day": "'"${START_DATE}"'",
      "end_day": "'"${END_DATE}"'",
      "status": "'"${STATUS}"'"
    }
  }'

echo
