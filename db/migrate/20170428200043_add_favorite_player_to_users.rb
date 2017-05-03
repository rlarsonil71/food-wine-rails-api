# frozen_string_literal: true

class AddFavoritePlayerToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :favorite_players, :user, foreign_key: true
  end
end
