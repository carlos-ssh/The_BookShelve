Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :posts
  
  post 'posts/search'
  root "posts#index"
end
