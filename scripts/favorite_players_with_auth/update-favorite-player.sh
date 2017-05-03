#!/bin/bash

#ID=1 TOKEN=token scripts/favorite_players_with_auth/update-favorite-player.sh

# update-favorite-player
# CURL PATCH that updates a favorite player with a given $ID and user $TOKEN
#  passed in as parameters

# Must sign up and sign in user first in order for this script to work

# favorite_players resource
#   t.string :player_name
#   t.string :team_name
#   t.string :sport
#   t.string :position
#   t.integer :player_number

curl --include --request PATCH http://localhost:4741/favorite_players/${ID} \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "player_info": {
      "player_name": "Derek Jeter PATCH",
      "team_name": "New York Yankees PATCH",
      "sport": "baseball PATCH",
      "position": "Hall of Fame Shortstop PATCH",
      "player_number": 999,
      "user_id" : 1
    }
  }'

# curl --include --request PATCH http://localhost:4741/favorite_players/${ID} \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=$TOKEN" \
#   --data '{
#     "player_info": {
#       "player_name": "Matt Holliday PATCH",
#       "team_name": "New York Yankees",
#       "sport": "baseball",
#       "position": "Designated Hitter",
#       "player_number": 17,
#       "user_id" : 1
#     }
#   }'
#
# curl --include --request PATCH http://localhost:4741/favorite_players/${ID} \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=$TOKEN" \
#   --data '{
#     "player_info": {
#       "player_name": "Derek Jeter",
#       "team_name": "New York Yankees",
#       "sport": "baseball",
#       "position": "Shortstop",
#       "player_number": 2,
#       "user_id" : 1
#     }
#   }'

echo
