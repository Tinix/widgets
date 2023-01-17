# frozen_string_literal: true

Rails.application.routes.draw do
  resources :widgets, only: [:show , :index] do
    resources :ratings, only: [ :create ]
  end
  resources :widget_ratings, only: [ :create ]

	namespace :customer_service do
		resources :widgets, only: [ :show, :update, :destroy ]
	end

  get 'manufacturer/:id', to: 'manufacturers#show'
  root to: "widgets#index"
end
