Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :update, :index]
      resources :tweets, only: [:create, :update, :index]
      resources :like, only: [:create, :update, :index]
    end
  end 
end
