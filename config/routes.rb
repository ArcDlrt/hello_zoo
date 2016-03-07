Rails.application.routes.draw do

  resources :zoos
  resources :breeds, except: [:show]
  resources :animals, only: [:show]

  resources :home, only: [:index]

  root 'home#index'

end
