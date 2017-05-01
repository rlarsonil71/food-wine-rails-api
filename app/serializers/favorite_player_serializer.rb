# frozen_string_literal: true

# favorite_players resource
#   t.string :player_name
#   t.string :team_name
#   t.string :sport
#   t.string :position
#   t.integer :player_number

class FavoritePlayerSerializer < ActiveModel::Serializer
  attributes :id, :player_name, :team_name, :sport, :position, :player_number
end
