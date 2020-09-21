Rails.application.routes.draw do
  resources :orders, only: [:index, :create, :update]
  resources :tables
  resources :bills
  resources :menu_items, only: [:index, :create, :update, :destroy]
  resources :categories, only: [:index, :create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
