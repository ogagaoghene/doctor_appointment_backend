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
      resources :appointments, only: [:create, :index, :destroy, :update]
     end 
  end 

  namespace :api do 
     namespace :v1 do
      resources :doctors, only: [:index, :show]
     end 
  end 

  resources :users

  get "api/v1/doctors", to: "api/v1/doctors#index"
  get "api/v1/doctors/:id", to: "api/v1/doctors#show"
  post "/appointments", to: "api/v1/appointments#create"
  get "api/v1/appointments/:user_id", to: "api/v1/appointments#index"
  post "/sign_in_form", to: "sessions#create"
end
