require "rails_helper"

RSpec.describe "Welcome", type: :feature do
  describe "Index" do
    scenario "displays app name and login/create button" do
      visit root_path

      expect(page).to have_content("Label Lens")
      expect(page).to have_button("Login")
      expect(page).to have_button("Create Account")
    end

    scenario "create button direct" do
      visit root_path

      click_button("Create Account")

      expect(current_path).to eq(create_account_path)
    end
  end
end