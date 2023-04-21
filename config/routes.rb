Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index'
  resources :tasks
end
