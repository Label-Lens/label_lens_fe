require "rails_helper"

RSpec.describe "Passwordless Login", type: :feature do 
  xit "allows a user to login with a magic link", :vcr do 
    visit "/login"
    
    within ".col-md-6" do 
      expect(page).to have_content("Passwordless Login")
    end

      fill_in "email", with: "doot@doot.com"

      click_button "Send Magic Link"
  end
end