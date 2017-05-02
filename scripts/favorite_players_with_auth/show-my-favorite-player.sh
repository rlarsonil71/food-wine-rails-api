#!/bin/bash

#ID=1 TOKEN=token scripts/favorite_players_with_auth/show-my-favorite-player.sh

# show-my-favorite-player
# CURL GET that gets a favorite player for a signed in user with a given $ID
#  and user $TOKEN passed in as parameters

# Must sign up and sign in user first in order for this script to work

# favorite_players resource
#   t.string :player_name
#   t.string :team_name
#   t.string :sport
#   t.string :position
#   t.integer :player_number

curl --include --request GET http://localhost:4741/my-favorite-players/${ID} \
     --header "Authorization: Token token=$TOKEN"

echo
