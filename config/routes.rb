Rails.application.routes.draw do
  resources :product_to_orders
  resources :class_variables
  resources :orders
  resources :products
  resources :couriers
  resources :employees
  resources :volonteers
end
