Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

  get "/auth", to: "sessions#create"

  get "/login", to: "users#new"
  post "/login", to: "users#create"

  get "/spotify", to: "spotify#index"
  get "/spotify_oa", to: "spotify#oauth"
  get "/spotify_search", to: "spotify#search"
  get "/album_search", to: "spotify#album"
  get "/albums", to: "albums#index"
  
end
