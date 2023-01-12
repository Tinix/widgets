# frozen_string_literal: true

Rails.application.routes.draw do
  resources :widgets, only: [:show , :index]
  resources :widget_ratings, only: [ :create ]

  get 'manufacturer/:id', to: 'manufacturers#show'
  get "/amazing", to: "widgets#index"
end
