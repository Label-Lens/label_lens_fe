require "rails_helper"

RSpec.describe "Welcome", type: :feature do
  describe 'user creation form' do
    scenario 'I see a form to create a user' do
    visit create_account_path

    fill_in 'Username', with: 'testuser'
    fill_in 'Email', with: 'test@example.com'


    click_button 'Create Account'
    end
  end
end