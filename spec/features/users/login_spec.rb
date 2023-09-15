require "rails_helper"

RSpec.describe "User Login", type: :feature do
  describe "traditional user login" do
    it "logs a user in with valid credentials" do
      visit root_path

      click_on "Log in"

      expect(current_path).to eq(login_path)
    end
  end
end