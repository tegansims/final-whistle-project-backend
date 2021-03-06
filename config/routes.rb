Rails.application.routes.draw do
  resources :boards
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
  post '/games/new', to: 'games#create'
  post '/boards/new', to: 'boards#create'
  post '/createcomment', to: 'notes#create'
  post '/createvote', to: 'votes#create'
  post '/scorers/new', to: 'scorers#create'
  post '/assists/new', to: 'assists#create'
  patch '/updatewinners', to: 'games#updatewinners'
  get '/topscorer/:id', to: 'teams#top_scorer'
  get '/topscorers/:id', to: 'teams#top_scorers'
  get '/topassister/:id', to: 'teams#top_assister'
  get '/topassisters/:id', to: 'teams#top_assisters'

  get '/teamboardcoords/:id', to: 'teams#team_coords'
  get '/boardcoords/:id', to: 'boards#coords'

  delete '/scorers/:id', to: 'scorers#destroy'
  delete '/assists/:id', to: 'assists#destroy'

  # patch '/jointeam', to: 'users#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
