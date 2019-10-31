Rails.application.routes.draw do
  resources :notes
  resources :votes
  resources :categories
  resources :users
  resources :usertypes
  resources :assists
  resources :scorers
  resources :games
  resources :players
  resources :teams
  resources :sports

  post '/login' , to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
