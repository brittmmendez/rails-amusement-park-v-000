Rails.application.routes.draw do
  root 'application#index'
  resources :users
  resources :attractions

<<<<<<< HEAD
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
=======
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
>>>>>>> 05d078b8339d6a535cec4342fadcd6eb49a9f7bd
  post '/logout' => 'sessions#destroy'




  end
