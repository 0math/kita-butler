Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :kids do
    resources :reservations, only: [:new, :create]
  end
  resources :kindergardens, only: [:index, :show] do
    resources :reviews, only: :create
  end

  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
