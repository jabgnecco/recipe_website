Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # READ ALL
  get "recipes", to: "recipes#index"
  # NEW
  get "recipes/new", to: "recipes#new"
  # READ ONE
  get "recipes/:id", to: "recipes#show", as: :recipe
  # CREATE
  post "recipes", to: "recipes#create"
  # EDIT
  get "recipes/:id/edit", to: "recipes#edit"
  # UPDATE
  patch "recipes/:id", to: "recipes#update"
  # DELETE
  delete "recipes/:id", to: "recipes#destroy"
end
