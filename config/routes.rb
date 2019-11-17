Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :courses do
    resources :bookings, only: :create
    resources :reviews, only: [:new, :create, :destroy]
  end

  resources :studios
  resources :bookings # do we need all of the routes for bookings?
end
