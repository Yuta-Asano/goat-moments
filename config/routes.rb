Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :tweets, only: [:index, :show, :create]

  root 'tweets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
