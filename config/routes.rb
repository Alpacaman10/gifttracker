Rails.application.routes.draw do
  root :to => "items#index"
  resources :relationships
  resources :circles
  devise_for :users
  resources :users
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
