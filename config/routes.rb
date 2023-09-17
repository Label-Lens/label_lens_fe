Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

  get "/login", to: "sessions#new"
  # post "/login", to: "sessions#create"

  get "/auth", to: "sessions#create"

  get "/register", to: "users#new"
  post "/register", to: "users#create"

  get "/spotify", to: "spotify#index"
  get "/spotify_oa", to: "spotify#oauth"
  get "/spotify_search", to: "spotify#search"
  get "/album_search", to: "spotify#album"
  
end
