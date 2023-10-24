Rails.application.routes.draw do
    # Rutas para el Back Office (Administración)
    namespace :admin do
      # Rutas para gestionar autores (Authors)
      resources :authors
      # Rutas para gestionar libros (Books)
      resources :books
      # Rutas para gestionar editoriales (Publishers)
      resources :publishers
    end

    # Rutas para la parte pública (Frontend)
    root to: 'books#index' # Página de inicio para usuarios anónimos
    get '/search', to: 'books#index' # Búsqueda de libros por título, ISBN, autor, editor



  end
=begin     # Rutas para la API
    namespace :api do
      # Rutas para los libros
      resources :books
      # Rutas para los autores
      resources :authors
      # Rutas para las editoriales
      resources :publishers
=end
