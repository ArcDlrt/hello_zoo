Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :zoos, only: [:index, :show, :create, :update, :delete]
    end
  end

  resources :zoos
  resources :breeds, except: [:show]
  resources :animals, only: [:show]

  resources :home, only: [:index]

  root 'home#index'

end
