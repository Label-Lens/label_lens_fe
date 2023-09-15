Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

  get "/login", to: "sessions#new"

  get "/register", to: "users#new"
  post "/register", to: "users#create"

  get "/spotify", to: "spotify#index"
  get "/spotify_oa", to: "spotify#oauth"
  
  post "/login", to: "sessions#create"

end
