Rails.application.routes.draw do
  root to: 'costs#index'
  resources :costs
end
