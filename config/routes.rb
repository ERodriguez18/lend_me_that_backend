Rails.application.routes.draw do
  resources :users
  resources :carts
  resources :items
  resources :shelves
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
