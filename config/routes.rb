# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    namespace :v1 do
      get 'clients/index'
      get 'clients/show'
      get 'clients/create'
      get 'clients/update'
    end
  end
  namespace :admin do
    namespace :v1 do
      resources :clients
      resources :vehicle
      resources :drivers
      resources :travels
    end
  end
end
