# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "categories#index"
  resources :categories
  resources :posts
  resources :bookmarks, except: [:show, :update, :edit]
  resources :votes, only: [:create, :new, :destroy, :new]
  
  devise_for :users
end
