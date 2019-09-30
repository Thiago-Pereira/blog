Rails.application.routes.draw do
  get "home/index"
  get "home/help"
  root "home#index"
  resources :posts
end
