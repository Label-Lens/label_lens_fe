require "rails_helper"

RSpec.describe "Welcome", type: :feature do
  describe "Index" do
    scenario "displays app name and login/create button" do
      visit root_path

      expect(page).to have_content("Label Lens")
      expect(page).to have_link("Log in")
      expect(page).to have_link('Sign in with Spotify')

      click_link 'Log in'
      expect(current_path).to eq(login_path)
      # We still need to test the OAuth flow
    end
  end
end