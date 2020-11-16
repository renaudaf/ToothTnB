Rails.application.routes.draw do
  devise_for :users
  root to: 'toothbrushes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :toothbrushes do
    resources :reviews, only: [:create]
    resources :rentals, only: [:create, :new]
  end
  resources :rentals, only: [:show, :index]
  resources :reviews, only: [:destroy]
end
