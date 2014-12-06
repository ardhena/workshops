Rails.application.routes.draw do
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  devise_for :users

  resources :profiles, only: [:show], path: '/users'

  root 'categories#index'
end
