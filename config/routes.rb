Rails.application.routes.draw do
  root to: "pictures#index"

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :pictures

  get '/ascending_couple_pictures', to: 'pictures#ascending_couple'
  get '/descending_couple_pictures', to: 'pictures#descending_couple'
  get '/descending_pictures', to: 'pictures#descending'
  get '/aboutfelly', to: 'application#about'

end
