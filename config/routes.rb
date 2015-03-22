Rails.application.routes.draw do

  root 'welcome#index'
  get 'welcome/index'

  get '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy"

  resources :users
  # resources :undergrads
  # resources :students

end
