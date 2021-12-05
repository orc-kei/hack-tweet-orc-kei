Rails.application.routes.draw do
  get 'hacks/index'
  root to: "hacks#index"
end
