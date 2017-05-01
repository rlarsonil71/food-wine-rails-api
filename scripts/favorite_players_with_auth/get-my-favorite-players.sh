#!/bin/bash

#TOKEN=token scripts/favorite_players_with_auth/get-my-favorite-players.sh

# get-my-favorite-players
# CURL GET that gets a list of favorite players for a signed in user with a
#  given user $TOKEN passed in as a parameter

# Must sign up and sign in user first in order for this script to work

# favorite_players resource
#   t.string :player_name
#   t.string :team_name
#   t.string :sport
#   t.string :position
#   t.integer :player_number

curl --include --request GET http://localhost:4741/my-favorite-players \
     --header "Authorization: Token token=$TOKEN"

echo
