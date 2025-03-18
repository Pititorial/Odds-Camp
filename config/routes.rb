Rails.application.routes.draw do
  devise_for :users
  
  root 'posts#index'
  
  resources :posts do
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
    resources :shares, only: [:create, :destroy]
  end
end 