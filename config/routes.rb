Rails.application.routes.draw do

  resources :zoos
  resources :breeds, except: [:show]
  resources :animals, only: [:show]

  resources :home, only: [:index]

  get 'settings/language/:locale' => 'settings#language', as: :language

  root 'home#index'

end
