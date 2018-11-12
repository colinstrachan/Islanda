Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :islands
  resources :users, only: [:show] do
    resources :bookings, except: [:edit, :update]
  end
end
