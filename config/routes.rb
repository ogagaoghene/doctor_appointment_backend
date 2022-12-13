# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create]
      resources :registrations, only: [:create]
    end
  end

  namespace :api do 
     namespace :v1 do
      resources :appointments
     end 
  end 

  namespace :api do 
     namespace :v1 do
      resources :doctors
     end 
  end 

  resources :users

  post "/sign_in_form", to: "sessions#create"
end
