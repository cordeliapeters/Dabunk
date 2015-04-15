Rails.application.routes.draw do

  root 'welcome#index'
  get 'welcome/index'

  get '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy"

  get 'newsfeed', to: "colleges#newsfeed"
  get 'explore', to: "colleges#explore"

  resources :colleges do
    collection do
      get 'search/:school_name', to: "colleges#search"
      get 'search', to: "colleges#search_school"
    end
  end

  resources :users do
    resources :photos #undergrads will create and delete photos
    resources :bookmarks #students will bookmark and unbookmark colleges
  end

end
