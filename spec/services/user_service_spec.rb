require "rails_helper"

describe UserService do 
  describe "class methods" do 
    describe ".create_user_request" do 
      it "can create a user" do 
        response = UserService.create_user_request(
          {
            email: "doot@doot.com",
            password: "test123",
            password_confirmation: "test123"
            }
          )[:data]

          expect(response).to be_a(Hash)
          expect(response).to have_key(:id)
          expect(response[:attributes]).to have_key(:email)
          expect(response[:attributes][:email]).to be_a(String)
      end
    end
  end
end