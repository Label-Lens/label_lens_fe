Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

  get "/auth", to: "sessions#create"

  get "/login", to: "users#new"
  post "/login", to: "users#create"

  get "/spotify", to: "spotify#index"
  get "/spotify_oa", to: "spotify#oauth"
  
end
