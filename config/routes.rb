Rails.application.routes.draw do
  get "users/show"
  get "users/destroy"
  resources :reviews
  get "home/index"
  devise_for :users

  resources :categories

  resources :places do
    resources :reviews, only: [ :new, :create ]
  end

  resources :users, only: [ :show ] do
    member do
      get :reviews
    end
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "home#index"

  # Places
  get "places" => "places#index"

  # Categories
  get "categories" => "categories#index"

  # Authentication routes
  post "/register", to: "auth#registery"
  post "/login", to: "auth#login"
  post "/verify", to: "auth#verify"

  # Places routes
  get "/categories", to: "categories#index"

  # User routes
  get "/users/me", to: "users#me", as: :current_user
  get "/users/reviews/:id", to: "users#reviews", as: :user_reviews
end
