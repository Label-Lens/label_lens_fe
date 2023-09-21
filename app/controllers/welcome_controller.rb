class WelcomeController < ApplicationController
  def index
    client_id = Rails.application.credentials.spotify[:client_id]
    redirect_uri = 'https://label-lens-back-end.onrender.com/auth/spotify/callback'
    
    # state = generate_random_string(16)
    scope = 'user-read-email playlist-modify-public user-library-read user-library-modify'
    
    @url = "https://accounts.spotify.com/authorize?" +
    {
      response_type: 'code',
      client_id: client_id,
      scope: scope,
      redirect_uri: redirect_uri
      # state: state
    }.to_query
  end
end