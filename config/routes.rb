Rails.application.routes.draw do
  root 'home/index', controller: :home, action: :index
  resources :consultas
  resources :medicos
  resources :pacientes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
