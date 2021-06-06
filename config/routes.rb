Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # verb 'path', to: 'controller#action'
  root to: 'restaurants#index'
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  patch 'restaurants/:id', to: 'restaurants#update'
  post 'restaurants', to: 'restaurants#create', as: :restaurant_create

end
