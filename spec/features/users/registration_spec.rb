require "rails_helper"

RSpec.describe "User registration", type: :feature do
  describe "happy path" do
    xit "creates a new user with valid credentials" do
      visit root_path

      click_on "Create Account"

      expect(current_path).to eq(register_path)

      fill_in :email, with: "doot@doot.com"

      click_on "Create Account"

      expect(current_path).to eq(root_path)
      expect(page).to have_link("Log in")
    end
  end
end