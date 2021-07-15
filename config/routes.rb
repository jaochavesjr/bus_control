# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users,
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
  namespace :admin do
    namespace :v1 do
      resources :clients, only: %i[show update index create]
      resources :vehicle, only: %i[show update index create]
      resources :drivers, only: %i[show update index create]
      resources :travels, only: %i[show update index create]
      get '/member-data', to: 'members#show'
    end
  end
end
