#!/bin/bash

# Notice that given_name is missing!  Validation error when running this curl cmd!
# curl --include --request POST http://localhost:4741/doctors \
#     --header "Content-Type: application/json" \
#     --data '{
#       "doctor": {
#         "speciality": "pediatry",
#         "family_name": "Phil",
#         "gender": "male"
#       }
#     }'

# scripts/favorite_players/create-favorite-player.sh

# create-favorite-player
# CURL POST that creates a new favorite player

# favorite_players resource
#   t.string :player_name
#   t.string :team_name
#   t.string :sport
#   t.string :position
#   t.integer :player_number

curl --include --request POST http://localhost:4741/favorite_players \
    --header "Content-Type: application/json" \
    --data '{
      "favorite_player": {
        "player_name": "Derek Jeter",
        "team_name": "New York Yankees",
        "sport": "baseball",
        "position": "Shortstop",
        "player_number": 2,
        "user_id" : 1
      }
    }'
echo
