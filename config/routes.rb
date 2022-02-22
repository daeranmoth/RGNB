Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bookings, only: [ :index, :show, :new, :create, :edit, :update ]

  resources :experiences, only: [:show, :index]
  resources :users do
    resources :experiences, only: [:new, :create, :destroy]
  end
end
