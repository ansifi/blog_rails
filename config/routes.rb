# config/routes.rb

Rails.application.routes.draw do
  get 'external_api/index'
  resources :posts, only: [:index]
end
