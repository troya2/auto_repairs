Rails.application.routes.draw do
  resources :customers
  root 'customers#new'
end
