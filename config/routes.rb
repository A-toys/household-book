Rails.application.routes.draw do
  devise_for :users
  root to: 'costs#index'
  resources :costs, only: [:index, :create]
  resources :users, only: [:show]
end
