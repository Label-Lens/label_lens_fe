require 'rails_helper'

RSpec.describe AlbumsService do 
  describe "class methods" do
    describe ".find_albums" do
      it "returns albums", :vcr do
        
        response = AlbumsService.find_albums("Kind of Blue", "Miles Davis")

        expect(response).to be_a(Hash)
        expect(response[:data]).to be_a(Array)
        expect(response[:data][0]).to have_key(:id)
        expect(response[:data][0][:attributes]).to have_key(:album_name)
        expect(response[:data][0][:attributes]).to have_key(:artist)
        expect(response[:data][0][:attributes]).to have_key(:image)
        expect(response[:data][0][:attributes]).to have_key(:label)
        expect(response[:data][0][:attributes]).to have_key(:link)
      end
    end
  end
end