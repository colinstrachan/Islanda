Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
=======
>>>>>>> 15d840f1f15ed2306e13a8dd29cf33d727e54ef6
  root to: 'islands#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :islands do
    resources :bookings, only: [:new, :create]
  end
  resources :users, only: [:show] do
    resources :bookings, only: [:index]
  end
  resources :bookings, only: [:show, :destroy]
end
