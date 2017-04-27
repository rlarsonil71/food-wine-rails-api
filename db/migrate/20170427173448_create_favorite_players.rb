# frozen_string_literal: true

class CreateFavoritePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_players do |t|
      t.string :player_name
      t.string :team_name
      t.string :sport
      t.string :position
      t.integer :player_number

      t.timestamps
    end
  end
end
