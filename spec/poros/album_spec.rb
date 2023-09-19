require "rails_helper"

RSpec.describe Album do
  it "exists w/ attrs" do
    attrs = {
      attributes: {
        id: 1,
        label: "Columbia",
        album_name: "Kind of Blue",
        artist: "Miles Davis",
        image: {
          :height=>64,
          :url=>"https://i.scdn.co/image/ab67616d000048510ebc17239b6b18ba88cfb8ca",
          :width=>64
        },
        link: "https://open.spotify.com/album/4sb0eMpDn3upAFfyi4q2rw"
      }

    }
    album = Album.new(attrs)

    expected = {
      :height=>64,
      :url=>"https://i.scdn.co/image/ab67616d000048510ebc17239b6b18ba88cfb8ca",
      :width=>64
    }
    
    expect(album).to be_an Album
    expect(album.id).to eq(1)
    expect(album.label).to eq("Columbia")
    expect(album.artist).to eq("Miles Davis")
    expect(album.image).to eq(expected)
    expect(album.link).to eq("https://open.spotify.com/album/4sb0eMpDn3upAFfyi4q2rw")

  end
end