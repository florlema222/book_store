# Rails.application.routes.draw do
#     # Rutas para el Back Office (Administración)
#     namespace :admin do
#       # Rutas para gestionar autores (Authors)
#       resources :authors
#       # Rutas para gestionar libros (Books)
#       resources :books
#       # Rutas para gestionar editoriales (Publishers)
#       resources :publishers
#     end

#     # Rutas para la parte pública (Frontend)
#     root 'books#index'

#     # Otras rutas de tu aplicación


#   end

Rails.application.routes.draw do
  resources :authors
  resources :books, except: :index # Rutas para la búsqueda y visualización de libros
  root to: 'books#index'
  resources :publishers
end
