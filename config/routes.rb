# frozen_string_literal: true

Rails.application.routes.draw do
  resources :widgets, only: %i[show index new create] do
    resources :ratings, only: [:create]
  end
  resources :widget_ratings, only: [:create]

  namespace :customer_service do
    resources :widgets, only: %i[show update destroy]
  end

  resources :design_system_docs, only: [:index] if Rails.env.development?

  # Custom routes start here
  get 'manufacturer/:id', to: 'manufacturers#show'

  # Root path
  root to: 'widgets#index'
end
