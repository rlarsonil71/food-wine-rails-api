# frozen_string_literal: true

# GET /favorite_players
class FavoritePlayersController < ApplicationController
  def index
    @favorite_players = FavoritePlayer.all

    render json: @favorite_players
  end
end
