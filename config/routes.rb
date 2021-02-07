Rails.application.routes.draw do
  resources :categories
  resources :posts
  
  post 'posts/search'
  root "posts#index"
end
