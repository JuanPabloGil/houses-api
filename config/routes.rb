# frozen_string_literal: true

Rails.application.routes.draw do
  resources :houses
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :favorites, only: [:create, :destroy, :index]
  
  get :logged_in, to: 'sessions#logged_in'
  get :myhouses, to: 'houses#myhouses'
  post :isfavorite, to: 'favorites#isfavorite'
  delete :logout, to: 'sessions#logout'
end
