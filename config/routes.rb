Rails.application.routes.draw do
  resources :listings, only: [:index, :show, :new, :create]

  root 'listings#index'
  get '/listings/new', to: 'listings#new', as: 'new_listing_form'
  post '/listings', to: 'listings#create'
  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#create'
end
