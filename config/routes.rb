Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :users
  resources :tweets do
    resources :comments, only: [:create]
    collection do
      get 'search'
    end
  end
end