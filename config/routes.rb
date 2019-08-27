Rails.application.routes.draw do
  get 'posts/new'
  get 'gelandes/new'
  get 'profiles/new'
  get 'users/new'
  get 'sessions/new'
  root 'pages#index'
  get 'pages/help'
  get 'pages/top'

  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  
  resources :profiles
  resources :gelandes
  resources :posts
end
