require "rails_helper"

RSpec.describe "Spotify Oauth", type: :feature do
  describe 'Oauthorization of Spotify user' do
    scenario 'I see a button to login into spotify' do
      visit spotify_oa_path

      expect(page).to have_link("Sign in with Spotify")
      
    end
  end
end