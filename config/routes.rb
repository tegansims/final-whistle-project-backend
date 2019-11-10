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
  get '/validate', to: 'users#validate'
  post '/signup', to: 'users#create'
  post '/teams/new', to: 'teams#create'
  post '/players/new', to: 'players#create'
  post '/creategame', to: 'games#create'
  post '/createcomment', to: 'notes#create'
  post '/createvote', to: 'votes#create'
  patch '/updatewinners', to: 'games#updatewinners'
  get '/topscorer/:id', to: 'teams#top_scorer'
  get '/topscorers/:id', to: 'teams#top_scorers'
  get '/topassister/:id', to: 'teams#top_assister'
  get '/topassisters/:id', to: 'teams#top_assisters'

  # patch '/jointeam', to: 'users#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
