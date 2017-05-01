#!/bin/bash

#ID=5 TOKEN=token scripts/favorite_players_with_auth/delete-favorite-player.sh

# delete-favorite-player
# CURL DELETE that deletes a new favorite player with a given $ID and user
#  $TOKEN passed in as parameters

# Must sign up and sign in user first in order for this script to work

# favorite_players resource
#   t.string :player_name
#   t.string :team_name
#   t.string :sport
#   t.string :position
#   t.integer :player_number

curl --include --request DELETE http://localhost:4741/favorite_players/${ID} \
     --header "Authorization: Token token=$TOKEN"

echo
