#!/bin/bash

#ID=10 scripts/favorite_players/delete-favorite-player.sh

# delete-favorite-player
# CURL DELETE that deletes a new favorite player with a given $ID passed in
#  as a parameter

# favorite_players resource
#   t.string :player_name
#   t.string :team_name
#   t.string :sport
#   t.string :position
#   t.integer :player_number

curl --include --request DELETE http://localhost:4741/favorite_players/${ID}

echo
