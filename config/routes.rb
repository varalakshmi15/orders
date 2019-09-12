Rails.application.routes.draw do
  resources :order_items
  devise_for :users
  root 'order_items#new'
  resources :items
end
