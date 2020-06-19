Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      devise_for :users
      root to: 'dishes#index'
      resources :dishes
      resources :categories
    end 
  end 

  devise_for :users
  root to: 'dishes#index'
  resources :dishes
  resources :categories
  
end
