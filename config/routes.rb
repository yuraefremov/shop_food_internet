Rails.application.routes.draw do
  devise_for :users
    namespace :api do
      namespace :v1 do
        root to: 'dishes#index'
        resources :dishes
        resources :categories
      end 
    end 

  
  root to: 'dishes#index'
  resources :dishes
  resources :categories
  
end
