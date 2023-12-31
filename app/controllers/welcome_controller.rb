class WelcomeController < ApplicationController
  def index
    client_id = Rails.application.credentials.spotify[:client_id]
    redirect_uri = "#{Rails.application.credentials.urls[:backend]}auth/spotify/callback"
    
    # state = generate_random_string(16)
    scope = 'user-read-email playlist-modify-public user-library-read user-library-modify'
    
    @url = "https://accounts.spotify.com/authorize?" +
    {
      response_type: 'code',
      client_id: client_id,
      scope: scope,
      redirect_uri: redirect_uri, allow_other_host: true
      # state: state
    }.to_query
  end
end