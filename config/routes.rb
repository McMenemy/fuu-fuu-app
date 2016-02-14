Rails.application.routes.draw do
  root to: "sessions#new"

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :pictures

  get '/couple_pictures', to: 'pictures#couple'
  get '/descending_pictures', to: 'pictures#descending'

end
