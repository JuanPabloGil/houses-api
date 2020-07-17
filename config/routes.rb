Rails.application.routes.draw do
  resources :houses 
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  get :logged_in, to: "sessions#logged_in"
  delete :logout, to: "sessions#logout"
end
