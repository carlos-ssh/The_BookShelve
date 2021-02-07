Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  
  post 'posts/search'
  resources :categories
  resources :posts do
    member do
      put 'like' => 'posts#like'
    end
  end
  
end