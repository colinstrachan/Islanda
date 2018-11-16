Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'islands#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "islands/search", to: "islands#search"
  resources :islands do
    resources :bookings, only: [:new, :create]
  end

  resources :users, only: [:show] do
    resources :bookings, only: [:index]
  end
  resources :bookings, only: [:show, :destroy]
end
