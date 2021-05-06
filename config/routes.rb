# frozen_string_literal: true

Rails.application.routes.draw do
  resources :bookmarks, except: [:show, :update, :edit]
  resources :categories
  resources :posts
  devise_for :users
  resources :votes, only: [:create, :new, :destroy]
  root to: "categories#index"
  
  
end
