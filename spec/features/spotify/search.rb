require "rails_helper"

RSpec.describe "Spotify  Search", type: :feature do
  describe 'Sporify Search function' do
    scenario 'A search bar to type in the name of an album', :vcr do
      visit spotify_search_path

      expect(page).to have_field('Album...')
      expect(page).to have_field('Artist...')
      fill_in "album", with: "Leprosy"
      fill_in "artist", with: "Death"
      click_button "Search"

      expect(current_path).to eq(albums_path)
      # require 'pry'; binding.pry
      save_and_open_page
    end
  end
end