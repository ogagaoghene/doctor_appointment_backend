# frozen_string_literal: true

Rails.application.routes.draw do

  post './login', to: 'sessions#create'
  delete '/logout', to: 'session#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  resources :appointments
  resources :doctors
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
