#!/bin/bash

# favorite_players resource
#   t.string :player_name
#   t.string :team_name
#   t.string :sport
#   t.string :position
#   t.integer :player_number

curl --include --request GET http://localhost:4741/favorite_players/3

echo
