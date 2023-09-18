require "rails_helper"

RSpec.describe "Spotify  Search", type: :feature do
  describe 'Sporify Search function' do
    scenario 'A search bar to type in the name of an album' do
      visit spotify_search_path

      expect(page).to have_field('query')
      
    end
  end
end