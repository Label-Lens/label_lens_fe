require "rails_helper"

RSpec.describe "Welcome", type: :feature do
  describe "Index" do
    scenario "displays app name and login/create button" do
      visit root_path

      expect(page).to have_content("Label Lens")
      expect(page).to have_button("Login")
      expect(page).to have_button("Create Account")
    end
  end
end