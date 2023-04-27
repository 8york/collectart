Rails.application.routes.draw do
  # get 'session/new'
  # get 'users/new'
  # get 'pages/home'
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]
  resources :works
  # the following creates routes like: /works/:id/likes/new
  resources :works do 
    resources :likes, only: [:create, :destroy]
  end
  # sing up and login and logout
  get '/new_user', to: "users#new"
  post '/new_user', to: "users#create"
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
