#!/bin/bash

#TOKEN=token scripts/favorite_players_with_auth/create-favorite-player.sh

# create-favorite-player
# CURL POST that creates a new favorite player for a signed in user with a
#  given user $TOKEN passed in as a parameter

# Must sign up and sign in user first in order for this script to work

# favorite_players resource
#   t.string :player_name
#   t.string :team_name
#   t.string :sport
#   t.string :position
#   t.integer :player_number

curl --include --request POST http://localhost:4741/favorite_players \
     --header "Content-Type: application/json" \
     --header "Authorization: Token token=$TOKEN" \
     --data '{
       "favorite_player": {
         "player_name": "LeBron James",
         "team_name": "Cleveland Cavaliers",
         "sport": "basketball",
         "position": "Forward",
         "player_number": 23,
         "user_id" : 1
       }
     }'
#
# curl --include --request POST http://localhost:4741/favorite_players \
#     --header "Content-Type: application/json" \
#     --header "Authorization: Token token=$TOKEN" \
#     --data '{
#       "favorite_player": {
#         "player_name": "Stephen Curry",
#         "team_name": "Golden State Warriors",
#         "sport": "basketball",
#         "position": "Guard",
#         "player_number": 30,
#         "user_id" : 1
#       }
#     }'
#
# curl --include --request POST http://localhost:4741/favorite_players \
#     --header "Content-Type: application/json" \
#     --header "Authorization: Token token=$TOKEN" \
#     --data '{
#       "favorite_player": {
#         "player_name": "Isaiah Thomas",
#         "team_name": "Boston Celtics",
#         "sport": "basketball",
#         "position": "Point Guard",
#         "player_number": 4,
#         "user_id" : 1
#       }
#     }'
#
# curl --include --request POST http://localhost:4741/favorite_players \
#     --header "Content-Type: application/json" \
#     --header "Authorization: Token token=$TOKEN" \
#     --data '{
#       "favorite_player": {
#         "player_name": "Phil Kessel",
#         "team_name": "Pittsburgh Penguins",
#         "sport": "hockey",
#         "position": "Right Wing",
#         "player_number": 81,
#         "user_id" : 1
#       }
#     }'

echo
