Rails.application.routes.draw do
  devise_for :users
  # resources :kindergardens, only: [:index, :show]
  root to: 'pages#home'
  resources :kids # do
  #  resources :reservations, only: [:new, :create]
  # end
  resources :kindergardens, only: [:index, :show] # do
    # resources :reviews, only: :create
  # end
  resources :reservations, only: [:new, :create] do
    resources :reviews, only: :create
  end
  # keeping all comments for further reference, please don't remove for now
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
