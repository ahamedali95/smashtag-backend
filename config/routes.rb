Rails.application.routes.draw do
  resources :users, only: [:create, :update, :index]
  resources :tweets, only: [:create, :update, :index]
  resources :like, only: [:create, :update, :index]
end
