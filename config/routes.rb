# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'home#home'

  post 'posts/search'
  
  resources :categories
  resources :posts do
    member do
      put 'like' => 'posts#like'
    end
  end

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
end
