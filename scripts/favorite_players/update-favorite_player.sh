#!/bin/bash

# favorite_players resource
#   t.string :player_name
#   t.string :team_name
#   t.string :sport
#   t.string :position
#   t.integer :player_number

curl --include --request PATCH http://localhost:4741/favorite_players/3 \
  --header "Content-Type: application/json" \
  --data '{
    "favorite_player": {
      "player_name": "Derek Jeter",
      "team_name": "New York Yankees",
      "sport": "baseball",
      "position": "Hall of Fame Shortstop",
      "player_number": 2
    }
  }'

curl --include --request PATCH http://localhost:4741/favorite_players/3 \
  --header "Content-Type: application/json" \
  --data '{
    "favorite_player": {
      "player_name": "Matt Holliday",
      "team_name": "New York Yankees",
      "sport": "baseball",
      "position": "Designated Hitter",
      "player_number": 17
    }
  }'

echo
