Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :movies
  # resources :lists
  # resources :bookmarks
  
  root to: 'lists#index'
  resources :lists , only: [:show, :index, :new, :create] do
    resources :bookmarks , only: [:new, :create]
  end
  resources :bookmarks , only: [:destroy]

  # root to: 'lists#index'
  # resources :lists do
  #   resources :bookmarks
  # end

end
