require "rails_helper"

RSpec.describe "User Login", type: :feature do
  describe "traditional user login" do
    it "logs a user in with valid credentials" do

      user = User.create!(email: "doot@doot.com", password: "test123")

      visit root_path

      click_on "Log in"

      expect(current_path).to eq(login_path)

      fill_in "Email", with: "doot@doot.com"
      fill_in "Password", with: "test123"
      click_on "Log In"

      expect(current_path).to eq(spotify_oa_path)
      expect(page).to have_link('Sign in with Spotify')
      #Do I need to add a Logout for the OAuth page?
    end

    it "does not log a user in with invalid credentials" do 

      user = User.create!(email: "doot@doot.com", password: "test123")

      visit root_path

      click_on "Log in"

      expect(current_path).to eq(login_path)

      fill_in "Email", with: "boot@dood.com"
      fill_in "Password", with: "tess123"
      click_on "Log In"

      expect(current_path).to eq(login_path)

      expect(page).to have_content("Your email or password was incorrect.")
    end
  end
end