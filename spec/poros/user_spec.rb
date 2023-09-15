require "rails_helper"

RSpec.describe User do 
  it "exists w/ attributes" do 
    data = {
      id: 1,
      attributes: {
        email: "doot@doot.com"
      }
    }

    user = User.new(data)
    expect(user).to be_a(User)
    expect(user.id).to eq(1)
    expect(user.email).to eq("doot@doot.com")
  end
end