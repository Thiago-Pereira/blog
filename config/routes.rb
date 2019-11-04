Rails.application.routes.draw do
  get "home/index"
  get "home/help"
  get "posts/index"
  root "home#index"
  resources :posts do
    resources :comments
  end
end
