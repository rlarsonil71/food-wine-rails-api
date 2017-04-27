# frozen_string_literal: true

class FavoritePlayersController < ApplicationController
  # GET /favorite_players
  def index
    @favorite_players = FavoritePlayer.all

    render json: @favorite_players
  end

  # POST /favorite_players
  def create
    @favorite_player = FavoritePlayer.new(favorite_player_params)

    if @favorite_player.save
      render json: @favorite_player, status: :created,
             location: @favorite_player
    else
      render json: @favorite_player.errors, status: :unprocessable_entity
    end
  end

  private

  # favorite_players resource
  #   t.string :player_name
  #   t.string :team_name
  #   t.string :sport
  #   t.string :position
  #   t.integer :player_number

  # Only allow a trusted parameter "white list" through.
  def favorite_player_params
    params.require(:favorite_player).permit(:player_name, :team_name, :sport,
                                            :position, :player_number)
  end
end
