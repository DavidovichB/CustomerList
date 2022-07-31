Rails.application.routes.draw do
  resources :customers
  get '/black', to: 'customers#black'
  root 'customers#index'
end
