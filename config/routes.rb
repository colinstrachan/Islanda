Rails.application.routes.draw do
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
