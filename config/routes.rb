Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  #root to: 'books#index'
  get '/search', to: 'search#index', as: 'search'
  resources :authors
  resources :books 
  resources :publishers
end
