Rails.application.routes.draw do
  get "home/index"
  devise_for :users

  resources :categories
  resources :places

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
  get "/cuisines", to: "cuisines#index"

  # Reviews routes
  post "/places/review", to: "reviews#create"
  get "/places/reviews/:id", to: "reviews#show", as: :place_reviews

  # User routes
  get "/users/me", to: "users#me", as: :current_user
  get "/users/:id", to: "users#show", as: :user
  get "/users/reviews/:id", to: "users#reviews", as: :user_reviews
end
