# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    namespace :v1 do
      resources :clients, only: %i[show update index create]
      resources :vehicle, only: %i[show update index create]
      resources :drivers, only: %i[show update index create]
      resources :travels, only: %i[show update index create]
    end
  end
end
