Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

<<<<<<< HEAD
  resources :bookings, only: [ :index, :show, :new, :create, :edit, :update ]
  resources :users, only: :show
  resources :experiences
=======
  resources :users, only: :show
  resources :experiences do
    resources :bookings, only: [ :index, :show, :new, :create, :edit, :update ]
  end
>>>>>>> 9b65e0b4c59785c921a33f0974904c952fb45ba7

end
