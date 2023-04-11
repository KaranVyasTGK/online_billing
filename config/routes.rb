Rails.application.routes.draw do
  root "invoices#index"
  resources :line_items
  resources :invoices
  resources :clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
