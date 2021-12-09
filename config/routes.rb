Rails.application.routes.draw do
  devise_for :users
  get 'hacks/index'
  root to: "hacks#index"

  resources :hacks,  only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
  resources :users, only: :show
end