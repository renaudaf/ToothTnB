Rails.application.routes.draw do
  devise_for :users
  root to: 'toothbrushes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'toothbrushes/count', to: 'toothbrushes#count'
  resources :toothbrushes do
    resources :reviews, only: [:create]
    resources :rentals, only: [:create, :new]
  end
  resources :rentals, only: [:show, :index] do
    member do
      patch :accept
      patch :deny
    end
  end
  resources :reviews, only: [:destroy]

  resources :toothbrushes, only: [] do
    resources :toothbrush_tags, only: [:new, :create]
  end

end
