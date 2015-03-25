Rails.application.routes.draw do

  root 'welcome#index'
  get 'welcome/index'

  get '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy"

  get 'newsfeed', to: "user#newsfeed"
  get 'explore', to: "user#explore"


  resources :users do
    resources :photos
    resources :bookmarks
  end

end
