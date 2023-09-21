class AlbumsFacade
  def self.get_albums(album, artist)
    albums = AlbumsService.find_albums(album, artist)
    # require 'pry'; binding.pry
    albums[:data].map do |album|
      Album.new(album)
    end
  end
end