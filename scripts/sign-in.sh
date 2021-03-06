#!/bin/bash

#EMAIL=erik@larson.com PASSWORD=triplets scripts/sign-in.sh

# sign-in
# CURL POST that signs in a new user with the passed in $EMAIL and $PASSWORD
#  parameters

# Must sign up with above user first in order for this script to work

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
