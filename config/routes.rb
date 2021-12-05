Rails.application.routes.draw do
  devise_for :users
  get 'hacks/index'
  root to: "hacks#index"
end
