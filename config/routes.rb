Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  get '/search', to: 'search#index', as: 'search'
  resources :authors
  resources :books
  resources :publishers

  namespace :api do
    namespace :v1 do
      resources :books
    end
  end
end
