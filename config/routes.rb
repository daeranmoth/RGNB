Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :experiences, only: [:new, :create]
  end
  resources :experiences, only: [:show, :index, :destroy]
end
