#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/diaries"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "diary": {
      "day": "'"${DATE}"'",
      "description": "'"${DESCRIPTION}"'",
      "status": "'"${STATUS}"'",
      "challenge_id": "'"${CHALLENGE_ID}"'",
    }
  }'

echo
