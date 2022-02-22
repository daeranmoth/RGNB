Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :experiences, only: [ :show, :index, :destroy ]



  resources :experiences, only: [ :new, :create ] do
    resources :bookings, only: [ :index, :show, :new, :create, :edit, :update ]
  end

end
