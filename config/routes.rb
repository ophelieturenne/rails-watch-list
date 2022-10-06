Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :movies
  # resources :lists
  # resources :bookmarks

  root to: 'lists#index'
  resources :lists do
    resources :movies
    resources :bookmarks, only: [:create]
  end
  resources :bookmarks, only: [:destroy]

end
