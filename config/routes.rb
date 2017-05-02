# frozen_string_literal: true
Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  get 'my-favorite-players' => 'favorite_players#my_favorite_players'
  get 'my-favorite-players/:id' => 'favorite_players#my_favorite_player'
  resources :favorite_players, except: [:new, :edit]
end
