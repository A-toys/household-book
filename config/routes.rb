Rails.application.routes.draw do
  devise_for :users
  root to: 'costs#index'
  resources :costs
end
