Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  #root to: 'books#index'
  get '/search', to: 'search#index', as: 'search'
  resources :authors
  resources :books
  resources :publishers

  namespace :api do
    namespace :v1 do
      resources :books
      # Define tus rutas aquí
    end
  end
end
