require "rails_helper"

RSpec.describe UserFacade do 
  describe "class methods" do
    describe ".create_user" do 
      xit "can create a user" do 
        user = UserFacade.get_or_create_user(
          {
            email: "doot@doot.com",
            password: "test123",
            password_confirmation: "test123"
          }
        )

        expect(user).to be_a(User)
        expect(user.email).to be_a(String)
      end
    end
  end
end