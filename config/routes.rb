Rails.application.routes.draw do
  resources :listings, only: [:index, :show]

  root 'listings#index'
  get '/listings/new', to: 'listings#new', as: 'new_listing'
  post '/listings', to: 'listings#create'

 

end
