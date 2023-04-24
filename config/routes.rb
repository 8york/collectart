Rails.application.routes.draw do
  # get 'users/new'
  # get 'pages/home'
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]
  resources :works
  get '/new_user', to: "users#new"
  post '/new_user', to: "users#create"
end
