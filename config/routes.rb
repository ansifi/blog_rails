# config/routes.rb

Rails.application.routes.draw do
  root 'events#index'  # Set the root path to the events#index action

  resources :users, only: [:new, :create, :show]
  resources :events
  resources :attendances, only: [:create, :destroy]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
