#!/bin/bash

#ID=1 TOKEN=token scripts/sign-out.sh

# sign-out
# CURL DELETE that signs out a signed in user with a given user
#  $ID and $TOKEN passed in parameters

# Must sign up and sign in user first in order for this script to work

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
