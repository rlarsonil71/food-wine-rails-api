#!/bin/bash

#ID=10 scripts/favorite_players/show-favorite-player.sh

# show-favorite-player
# CURL GET that shows a favorite player with a given $ID passed in as a
#  parameter

# favorite_players resource
#   t.string :player_name
#   t.string :team_name
#   t.string :sport
#   t.string :position
#   t.integer :player_number

curl --include --request GET http://localhost:4741/favorite_players/${ID}

echo
