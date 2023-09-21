require "rails_helper"

RSpec.describe AlbumsFacade do 
  describe "class methods" do
    describe ".get_albums" do
      it "finds albums" do
        albums = AlbumsFacade.get_albums("Kind of Blue")
        expect(albums).to be_an(Array)
        albums.each do |album|
          expect(album).to be_an Album
        end
      end
    end
  end
end