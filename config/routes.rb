Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  resources :product_to_orders
  resources :class_variables
  resources :orders
  resources :products
  resources :couriers
  resources :employees
  resources :volonteers
   get 'login', to: 'sessions#new'   
   post 'login', to: 'sessions#create'
   get 'create_user', to: 'sessions#create_user'
   post 'create_user', to: 'sessions#create_user_confirm'
   get 'welcome', to: 'sessions#welcome'
   get 'create_order', to: 'products#create_order'
   post 'create_order_check', to: 'products#create_order_check'
   get 'order_completed', to: 'products#order_complited'
end
