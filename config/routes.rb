Rails.application.routes.draw do

  root :to => "pages#index"
  resources :creatures
  resources :creature_locations
  resources :games
  resources :locations
  resources :moves
  resources :trades
  resources :users
  resources :user_battles
  resources :user_creatures
  resources :user_creature_moves
  resources :user_menus
  resources :user_trades



end
